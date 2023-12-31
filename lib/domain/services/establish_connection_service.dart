import 'dart:isolate';
import 'dart:typed_data';

import '../../crypto/crypto_dh.dart';
import '../../crypto/crypto_helpers.dart';
import '../../crypto/crypto_rsa.dart';
import '../../transport/protos/generated/intermediate.pb.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/country_codes_decoder.dart';
import '../../utils/extensions/extension_as_Uint8List.dart';
import '../../utils/logger.dart';
import '../users_db_repository.dart';
import '../users_pool.dart';

class EstablishConnectionService {
  final UsersPool _usersPool;
  final UsersDbRepository _usersDbRepository;

  EstablishConnectionService({required usersPool, required usersDbRepository})
      : _usersPool = usersPool,
        _usersDbRepository = usersDbRepository;

  Future<ConnectionReply> call({required ConnectionRequest params}) async {
    var decrypted =
        await Isolate.run(() => CryptoRSA().decrypt(params.encryptedData));
    var result = ConnectionRequestData.fromBuffer(decrypted);

    logger('country code = ${countryCodesDecode(result.countryCode)}');
    logger('player id = ${result.playerId}');

    var dh = DiffieHellman(256);

    var serverDHKey = dh.createKeyExchange();
    var sessionAESKey =
        dh.decryptKeyExchange(params.dhExchangeKey.asUint8List());

    logger('session key = $sessionAESKey');

    var resultCode = ConnectionReply_Result.OK;
    var token = generateToken(result.playerId);

    Uint8List rc = createUint8ListFromString(resultCode.value.toString());
    var digest = generateCheckSum(
        [...rc, ...serverDHKey, ...createUint8ListFromString(token)]);

    _usersPool.addUser(
        token: token, playerId: result.playerId, sessionAESKey: sessionAESKey);

    await _usersDbRepository.insertOrUpdateUser(
        playerId: result.playerId,
        countryCode: countryCodesDecode(result.countryCode),
        dateTime: DateTime.now());

    return ConnectionReply()
      ..dhExchangeKey = serverDHKey
      ..digest = digest
      ..token = token
      ..result = resultCode;
  }
}
