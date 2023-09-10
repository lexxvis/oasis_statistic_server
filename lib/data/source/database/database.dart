import 'package:drift/drift.dart';
import '../../mappers/ads_source_mapper.dart';
import '../../models/game_statisctic_model.dart';
import 'schema_versions.dart';
import '../../models/hand_description_model.dart';
import 'converters/hand_description_converter.dart';
import 'tables.dart';

import 'connection/connection.dart';

part 'database.g.dart';

///    generate current drift schema with :
///    increment schemaVersion and run :
///    dart run drift_dev schema dump lib\data\source\database\database.dart drift_schemas/
///    generate helper dart file :
///    dart run drift_dev schema steps drift_schemas  lib\data\source\database\schema_versions.dart

enum AdsSource {
  adMobInterstitial,
  adMobRewarded,
  adUnityInterstitial,
  adUnityRewarded
}

@DriftDatabase(tables: [UsersInformation, ErrorLogs, GameStatistics])
class UsersDatabase extends _$UsersDatabase {
  UsersDatabase() : super(openConnection());

  @override
  int get schemaVersion => 2;

  ///
  ///  migrate strategy, current DB version is 2
  ///
  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: stepByStep(
        from1To2: (m, schema) async {
          await customStatement('PRAGMA foreign_keys = OFF');
          await m.addColumn(
              schema.usersInformation, schema.usersInformation.sessions);

          final wrongForeignKeys =
              await customSelect('PRAGMA foreign_key_check').get();
          assert(wrongForeignKeys.isEmpty,
              '${wrongForeignKeys.map((e) => e.data)}');

          await customStatement('PRAGMA foreign_keys = ON');
        },
      ),
    );
  }

  ///
  /// insert new user or update CountryCode and LastActivity time fields
  /// of existed user.
  /// Is used in Establish connection service
  ///
  Future<void> insertOrUpdateUser(UsersInformationCompanion model) =>
      into(usersInformation).insert(model,
          onConflict: DoUpdate((old) => UsersInformationCompanion.custom(
                sessions: old.sessions + Constant(1),
                countryCode: Variable(model.countryCode.value),
                lastActivity: Variable(model.lastActivity.value),
              )));

  ///
  /// update ads counters. 4 sources available (see AdsSource enum)
  /// is used in AdsStatisticData service.
  /// Update counters and LastActivity time field
  ///
  Future<void> updateAdsFields(
      {required String playerId,
      required AdsSource source,
      required DateTime dateTime}) async {
    String columnName = '';
    switch (source) {
      case AdsSource.adMobRewarded:
        columnName = usersInformation.adMobRewarded.name;
        break;
      case AdsSource.adMobInterstitial:
        columnName = usersInformation.adMobInterstitials.name;
        break;
      case AdsSource.adUnityInterstitial:
        columnName = usersInformation.adUnityInterstitials.name;
        break;
      case AdsSource.adUnityRewarded:
        columnName = usersInformation.adUnityRewarded.name;
        break;
    }

    await customUpdate(
      'UPDATE ${usersInformation.actualTableName} SET $columnName = $columnName + 1, '
      'last_activity  = ? WHERE id == ?',
      variables: [Variable(dateTime), Variable(playerId)],
    );
  }

  ///
  /// update game statistic in 2 tables - userInformation and gameStatistic
  /// in one transaction
  /// 1. update userInformation fields
  /// 2. insert new row in gameSatistic
  ///
  Future<void> updateGameStatistic(GameStatisticModel model) async {
    return transaction(() async {
      await customUpdate(
        'UPDATE ${usersInformation.actualTableName} SET '
        '${usersInformation.balance.name} = ?, '
        '${usersInformation.goldBalance.name} = ?,'
        '${usersInformation.level.name} = ?, '
        '${usersInformation.moneyIn.name} = ${usersInformation.moneyIn.name} + ?, '
        '${usersInformation.moneyOut.name} = ${usersInformation.moneyOut.name} + ?, '
        'last_activity  = ? WHERE id == ?',
        variables: [
          Variable(model.balance),
          Variable(model.goldBalance),
          Variable(model.level),
          Variable(model.bet),
          Variable(model.win),
          Variable(model.dateTime),
          Variable(model.playerId)
        ],
      );
      var gameStatisticCompanion = GameStatisticsCompanion.insert(
        time: model.dateTime,
        ante: model.ante,
        bet: model.bet,
        win: model.win,
        gameResult: model.gameResults,
        dealerHand: Value(model.dealerHand),
        playerHand: Value(model.playerHand),
        playerUnchangedHand: Value(model.playerUnchangedHand),
        playerId: Value(model.playerId),
      );
      await into(gameStatistics).insert(gameStatisticCompanion);
    });
  }

  Future<void> insertErrorLogRow(
          {required String playerId,
          required String dateTime,
          required String message,
          required int hash}) async =>
      await into(errorLogs).insert(
          ErrorLogsCompanion.insert(
              hash: Value(hash),
              time: dateTime,
              description: message,
              playerId: Value(playerId)),
          mode: InsertMode.insertOrIgnore);
}
