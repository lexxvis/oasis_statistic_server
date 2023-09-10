import 'dart:typed_data';

import 'package:collection/collection.dart';

import '../../crypto/crypto_aes.dart';
import '../../crypto/crypto_helpers.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/extensions/extension_as_Uint8List.dart';
import '../../utils/logger.dart';
import '../users_db_repository.dart';
import '../users_pool.dart';

class SendErrorsLogService {
  final UsersPool _usersPool;
  final UsersDbRepository _usersDbRepository;

  SendErrorsLogService({required usersPool, required usersDbRepository})
      : _usersPool = usersPool,
        _usersDbRepository = usersDbRepository;

  Future<StatisticsDataReply> call(
      {required String token, required Stream<ErrorLogItem> param}) async {
    var errors = <String>[];

    var currentAESKey = _usersPool.getAESKey(token);

    if (currentAESKey != null) {
      final  playerId = _usersPool.getPlayerId(token);
      await for (var log in param) {
        var cryptoAES = CryptoAES(key: currentAESKey, iv: log.iv);
        var decryptedData = await cryptoAES.decrypt(log.message);
        var decryptedMessage =
            createStringFromUint8List(decryptedData.asUint8List());

        var calculatedDigest =
            generateCheckSum(createUint8ListFromString(decryptedMessage));
        if (ListEquality().equals(log.digest, calculatedDigest)) {
          errors.add(decryptedMessage);
          _usersDbRepository.insertErrorLog(playerId: playerId, error: decryptedMessage);
        } else {
          int i = 0;
          logger('receive error log stream;');
          for (var error in errors) {
            logger('$i :  $error');
            i++;
          }
          logger('error calculated digest');

          Uint8List rc =
              createUint8ListFromString(ResultStatus.ERROR.value.toString());
          var digest = generateCheckSum(rc);
          return StatisticsDataReply()
            ..result = ResultStatus.ERROR
            ..digest = digest;
        }
      }

      int i = 0;
      logger('receive error log stream;');
      for (var error in errors) {
        logger('$i :  $error');
        i++;
      }

      _usersPool.updateLastActiveTime(token);

      Uint8List rc =
          createUint8ListFromString(ResultStatus.OK.value.toString());
      var digest = generateCheckSum(rc);
      return StatisticsDataReply()
        ..result = ResultStatus.OK
        ..digest = digest;
    } else {
      logger('statistic error logs stream: token not found...');
      Uint8List rc = createUint8ListFromString(
          ResultStatus.TOKEN_NOT_FOUND.value.toString());
      var digest = generateCheckSum(rc);
      return StatisticsDataReply()
        ..result = ResultStatus.TOKEN_NOT_FOUND
        ..digest = digest;
    }
  }
}
