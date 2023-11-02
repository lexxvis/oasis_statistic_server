import 'dart:typed_data';
import 'dart:isolate';

import 'package:collection/collection.dart';

import '../../crypto/crypto_dh.dart';
import '../../crypto/crypto_helpers.dart';
import '../../crypto/crypto_rsa.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../users_pool/models/active_user_model.dart';
import '../../utils/extensions/extension_as_Uint8List.dart';
import '../../utils/logger.dart';
import '../users_pool.dart';

class AuthAdminService {
  final login = 'lexxvis';
  final password = 'Oasis1976';

  final UsersPool _usersPool;

  AuthAdminService({required usersPool}) : _usersPool = usersPool;

  Future<AuthReply> call({required AuthRequest param}) async {
    logger('auth admin request');

    var hash = generateSHA3Hash(createUint8ListFromString('$password$login'));

    var decrypted =
        await Isolate.run(() => CryptoRSA().decrypt(param.encryptedAuthData));

    EncryptedAuthData authData = EncryptedAuthData.fromBuffer(decrypted);

    final bytesBuilder = BytesBuilder();
    bytesBuilder.add(hash);
    bytesBuilder.add(authData.challenge);

    final sHash = generateSHA3Hash(bytesBuilder.toBytes());

    if (ListEquality().equals(sHash, authData.hash.asUint8List())) {
      /// authenticated
      logger('authenticated');

      /// check if Admin already logged in ( somebody else)
      if (_usersPool.checkIfAdminExist()) {
        logger('admin already exists');

        /// delete existing Admin
        _usersPool.deleteAdmin();

        Uint8List rc = createUint8ListFromString(
            AuthReply_Result.ALREADY_EXIST.value.toString());

        var digest = generateCheckSum(rc);

        return AuthReply()
          ..result = AuthReply_Result.ALREADY_EXIST
          ..digest = digest;

      } else {
        ///  authenticated and no active admins in system
        var dh = DiffieHellman(256);
        var serverDHKey = dh.createKeyExchange();
        var sessionAESKey =
            dh.decryptKeyExchange(param.dhExchangeKey.asUint8List());

        final token = generateToken(createStringFromUint8List(sHash));

        Uint8List rc =
            createUint8ListFromString(AuthReply_Result.OK.value.toString());

        var digest = generateCheckSum(
            [...rc, ...serverDHKey, ...createUint8ListFromString(token)]);

        _usersPool.addUser(
            role: Role.admin,
            token: token,
            playerId: createStringFromUint8List(hash),
            sessionAESKey: sessionAESKey);

        return AuthReply()
          ..dhExchangeKey = serverDHKey
          ..result = AuthReply_Result.OK
          ..token = token
          ..digest = digest;
      }
    } else {
      logger('auth error');

      /// return error : Login/password incorrect or error in auth process
      Uint8List rc =
          createUint8ListFromString(AuthReply_Result.ERROR.value.toString());

      var digest = generateCheckSum(rc);

      return AuthReply()
        ..result = AuthReply_Result.ERROR
        ..digest = digest;
    }
  }
}
