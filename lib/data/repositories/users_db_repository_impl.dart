import 'package:drift/drift.dart';
import '../../crypto/crypto_helpers.dart';
import '../../domain/users_db_repository.dart';
import '../../utils/logger.dart';
import '../models/game_statisctic_model.dart';
import '../source/database/database.dart';

/// Database repository implementation
/// all requests to database handle here
class UsersDbRepositoryImpl implements UsersDbRepository {
  final UsersDatabase _usersDatabase;

  UsersDbRepositoryImpl(this._usersDatabase);

  @override
  Future<void> insertOrUpdateUser(
      {required String playerId,
      required String countryCode,
      required DateTime dateTime}) async {
    var model = UsersInformationCompanion(
        playerId: Value(playerId),
        countryCode: Value(countryCode),
        lastActivity: Value(dateTime),
        createdTime: Value(dateTime));
    try {
      await _usersDatabase.insertOrUpdateUser(model);
    } catch (e) {
      logger('insetOrUpdate SQLite error :  ${e.toString()}');
    }
  }

  @override
  Future<void> updateAdsCounters(
      {String? playerId, AdsSource? source, required DateTime dateTime}) async {
    if ((playerId != null) && (source != null)) {
      try {
        await _usersDatabase.updateAdsFields(
            playerId: playerId, source: source, dateTime: dateTime);
      } catch (e) {
        logger('update Ads counters SQLite error :  ${e.toString()}');
      }
    } else {
      logger(
          'something went wrong in ads fields update (playerId: $playerId, with source: $source');
    }
  }

  @override
  Future<void> updateGameStatistic(GameStatisticModel model) async {
    try {
      await _usersDatabase.updateGameStatistic(model);
    } catch (e) {
      logger('update game statistic SQLite error :  ${e.toString()}');
    }
  }

  @override
  Future<void> insertErrorLog({String? playerId, required String error}) async {
    if (playerId != null) {
      try {
        final splitted = error.split(']: ');
        int hash = calculateCRC32('$error$playerId');

        await _usersDatabase.insertErrorLogRow(
            playerId: playerId,
            dateTime: splitted[0].substring(1),
            message: splitted[1],
            hash: hash);
      } catch (e) {
        logger('update error log statistic SQLite error :  ${e.toString()}');
      }
    } else {
      logger('something went wrong in error log update (playerId: $playerId');
    }
  }
}
