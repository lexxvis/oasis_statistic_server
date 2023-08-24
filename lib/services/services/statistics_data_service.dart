import 'dart:typed_data';

import 'package:collection/collection.dart';

import '../../crypto/crypto_aes.dart';
import '../../crypto/crypto_helpers.dart';
import '../../transport/protos/generated/intermediate.pb.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/cards_codecs.dart';
import '../../utils/logger.dart';
import '../users_pool.dart';

class StatisticDataService {
  final UsersPool _usersPool;

  StatisticDataService({required usersPool}) : _usersPool = usersPool;

  Future<StatisticsDataReply> call(
      {required String token, required StatisticsDataRequest param}) async {
    logger('receive statistic packet');

    var digest = param.digest;
    var currentAESKey = _usersPool.getAESKey(token);
    if (currentAESKey != null) {
      var cryptoAES = CryptoAES(key: currentAESKey, iv: param.iv);

      var decryptedData = await cryptoAES.decrypt(param.encryptedData);

      var calculatedDigest = generateCheckSum(decryptedData);
      if (ListEquality().equals(digest, calculatedDigest)) {
        _usersPool.updateLastActiveTime(token);
        logger('statistic packet digest ok...');
        var gameStatisticData = GameStatisticData.fromBuffer(decryptedData);
        logger('ante = ${gameStatisticData.ante}');
        logger('balance = ${gameStatisticData.balance}');
        logger('bet = ${gameStatisticData.bet}');
        logger('goldBalance = ${gameStatisticData.goldBalance}');
        logger('level = ${gameStatisticData.level}');
        logger('win = ${gameStatisticData.win}');
        logger(
            'game result = ${decodeGameResult(gameStatisticData.gameResult)}');
        logger('player hand = ${decodeHand(gameStatisticData.playerHand)}');
        logger(
            'player unchanged hand = ${decodeHand(gameStatisticData.playerUnchangedHand)}');
        logger('dealer hand = ${decodeHand(gameStatisticData.dealerHand)}');

        Uint8List rc =
            createUint8ListFromString(ResultStatus.OK.value.toString());

        var digest = generateCheckSum(rc);
        return StatisticsDataReply()
          ..result = ResultStatus.OK
          ..digest = digest;
      } else {
        logger('statistic packet: digest error...');
        Uint8List rc =
            createUint8ListFromString(ResultStatus.ERROR.value.toString());
        var digest = generateCheckSum(rc);
        return StatisticsDataReply()
          ..result = ResultStatus.ERROR
          ..digest = digest;
      }
    } else {
      logger('statistic packet: token not found...');
      Uint8List rc = createUint8ListFromString(
          ResultStatus.TOKEN_NOT_FOUND.value.toString());
      var digest = generateCheckSum(rc);
      return StatisticsDataReply()
        ..result = ResultStatus.TOKEN_NOT_FOUND
        ..digest = digest;
    }
  }
}
