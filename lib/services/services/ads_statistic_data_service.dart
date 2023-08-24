import 'dart:typed_data';

import 'package:collection/collection.dart';

import '../../crypto/crypto_helpers.dart';
import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/logger.dart';
import '../users_pool.dart';

class AdsStatisticDataService {
  final UsersPool _usersPool;

  AdsStatisticDataService({required usersPool}) : _usersPool = usersPool;

  Future<StatisticsDataReply> call(
      {required String token, required AdsStatisticRequest param}) async {
    logger('receive Ads statistic packet');

    if (_usersPool.doesUserExist(token)) {
      Uint8List rc =
          createUint8ListFromString(param.adsSource.value.toString());
      var digest = generateCheckSum(rc);
      if (ListEquality().equals(digest, param.digest)) {
        logger('receive ads data from : ${param.adsSource.name}');
        _usersPool.updateLastActiveTime(token);
        Uint8List rc =
            createUint8ListFromString(ResultStatus.OK.value.toString());
        var digest = generateCheckSum(rc);
        return StatisticsDataReply()
          ..result = ResultStatus.OK
          ..digest = digest;
      } else {
        logger('statistic ads packet: digest error...');
        Uint8List rc =
            createUint8ListFromString(ResultStatus.ERROR.value.toString());
        var digest = generateCheckSum(rc);
        return StatisticsDataReply()
          ..result = ResultStatus.ERROR
          ..digest = digest;
      }
    } else {
      logger('ads statistic packet: token not found...');
      Uint8List rc = createUint8ListFromString(
          ResultStatus.TOKEN_NOT_FOUND.value.toString());
      var digest = generateCheckSum(rc);
      return StatisticsDataReply()
        ..result = ResultStatus.TOKEN_NOT_FOUND
        ..digest = digest;
    }
  }
}
