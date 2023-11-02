import '../data/models/game_statisctic_model.dart';
import '../data/source/database/database.dart';

/// interface to communicate with data layer
abstract interface class UsersDbRepository {
  Future<void> insertOrUpdateUser(
      {required String playerId,
      required String countryCode,
      required DateTime dateTime});

  Future<void> updateAdsCounters(
      {String? playerId, AdsSource? source, required DateTime dateTime});

  Future<void> updateGameStatistic(GameStatisticModel model);

  Future<void> insertErrorLog({String? playerId, required String error});
}
