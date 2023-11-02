import 'dart:typed_data';

import 'package:collection/collection.dart';

import '../../crypto/crypto_aes.dart';
import '../../crypto/crypto_helpers.dart';
import '../../data/mappers/ads_source_mapper.dart';
import '../../data/models/game_statisctic_model.dart';
import '../../data/models/hand_description_model.dart';
import '../../transport/protos/generated/intermediate.pb.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/logger.dart';
import '../users_db_repository.dart';
import '../users_pool.dart';

/// callable class
class StatisticDataService {
  final UsersPool _usersPool;
  final UsersDbRepository _usersDbRepository;

  StatisticDataService({required usersPool, required usersDbRepository})
      : _usersPool = usersPool,
        _usersDbRepository = usersDbRepository;

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
        logger('game result = ${gameStatisticData.gameResult}');
        // logger('player hand = ${decodeHand(gameStatisticData.playerHand)}');
        // logger(
        //     'player unchanged hand = ${decodeHand(gameStatisticData.playerUnchangedHand)}');
        //logger('dealer hand = ${decodeHand(gameStatisticData.dealerHand)}');

        final playerId = _usersPool.getPlayerId(token);

        if (playerId != null) {
          final model = GameStatisticModel(
              dateTime: DateTime.now(),
              ante: gameStatisticData.ante,
              bet: gameStatisticData.bet,
              win: gameStatisticData.win,
              playerId: playerId,
              level: gameStatisticData.level,
              balance: gameStatisticData.balance,
              goldBalance: gameStatisticData.goldBalance,
              dealerHand: HandDescriptionModel(
                  handsMapper(gameStatisticData.dealerHand)),
              playerHand: HandDescriptionModel(
                  handsMapper(gameStatisticData.playerHand)),
              playerUnchangedHand: HandDescriptionModel(
                  handsMapper(gameStatisticData.playerUnchangedHand)),
              gameResults: gameResultMapper(gameStatisticData.gameResult));

          _usersDbRepository.updateGameStatistic(model);
        }

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
