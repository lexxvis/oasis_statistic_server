import 'package:drift/drift.dart';
import '../../mappers/ads_source_mapper.dart';
import 'converters/hand_description_converter.dart';

class UsersInformation extends Table {

  @override
  Set<Column> get primaryKey => {playerId};

  TextColumn get playerId => text().named('id').withLength(min: 15, max: 15)();

  TextColumn get countryCode => text().named('country')();

  IntColumn get adMobInterstitials =>
      integer().named('adMobInt').withDefault(const Constant(0))();

  IntColumn get adMobRewarded =>
      integer().named('adMobRew').withDefault(const Constant(0))();

  IntColumn get adUnityInterstitials =>
      integer().named('adUnityInt').withDefault(const Constant(0))();

  IntColumn get adUnityRewarded =>
      integer().named('adUnityRew').withDefault(const Constant(0))();

  IntColumn get moneyIn => integer().withDefault(const Constant(0))();

  IntColumn get moneyOut => integer().withDefault(const Constant(0))();

  IntColumn get balance => integer().withDefault(const Constant(0))();

  IntColumn get goldBalance => integer().withDefault(const Constant(0))();

  IntColumn get level => integer().withDefault(const Constant(0))();

  DateTimeColumn get createdTime => dateTime()();

  DateTimeColumn get lastActivity => dateTime()();

  IntColumn get sessions => integer().withDefault(const Constant(1))();

}

@DataClassName('ErrorLog')
class ErrorLogs extends Table {
  @override
  Set<Column> get primaryKey => {hash};

  IntColumn get hash => integer().named('id')();
  TextColumn get time => text()();
  TextColumn get description => text()();
  TextColumn get playerId => text().nullable().references(UsersInformation, #playerId)();
}

@DataClassName('GameStatistic')
class GameStatistics extends Table with AutoIncrementingPrimaryKey {
  DateTimeColumn get time => dateTime()();
  IntColumn get ante => integer()();
  IntColumn get bet => integer()();
  IntColumn get win => integer()();
  TextColumn get gameResult => textEnum<GameResults>()();
  TextColumn get dealerHand => text().map(const HandDescriptionConverter()).nullable()();
  TextColumn get playerHand => text().map(const HandDescriptionConverter()).nullable()();
  TextColumn get playerUnchangedHand => text().map(const HandDescriptionConverter()).nullable()();
  TextColumn get playerId => text().nullable().references(UsersInformation, #playerId)();
}

mixin AutoIncrementingPrimaryKey on Table {
  IntColumn get id => integer().autoIncrement()();
}



