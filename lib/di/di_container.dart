import '../data/repositories/users_db_repository_impl.dart';
import '../data/source/database/database.dart';
import '../domain/services/ads_statistic_data_service.dart';
import '../domain/services/close_connection_service.dart';
import '../domain/services/establish_connection_service.dart';
import '../domain/services/send_errors_log_service.dart';
import '../domain/services/statistics_data_service.dart';
import '../domain/users_db_repository.dart';
import '../domain/users_pool.dart';
import '../transport/user_services.dart';
import '../transport/working_service.dart';
import '../users_pool/users_pool_impl.dart';

WorkingService makeWorkingService() {
  final diContainer = _DIContainer();
  return WorkingService(diContainer._servicesFactory);
}

class _DIContainer {
  late final UsersDatabase _database;
  late final UsersDbRepository _usersDbRepository;
  late final UsersPool _userPool;
  late final ServicesFactory _servicesFactory;

  _DIContainer() {
    _database = UsersDatabase();
    _usersDbRepository = UsersDbRepositoryImpl(_database);
    _userPool = UsersPoolImpl();
    _servicesFactory = ServicesFactory(_userPool, _usersDbRepository);
  }
}

class ServicesFactory implements UserServices {
  final UsersPool _usersPool;
  final UsersDbRepository _usersDbRepository;

  ServicesFactory(this._usersPool, this._usersDbRepository);

  @override
  CloseConnectionService get closeConnection =>
      CloseConnectionService(usersPool: _usersPool);

  @override
  EstablishConnectionService get establishConnection =>
      EstablishConnectionService(
          usersPool: _usersPool, usersDbRepository: _usersDbRepository);

  @override
  AdsStatisticDataService get adsStatisticData => AdsStatisticDataService(
      usersPool: _usersPool, usersDbRepository: _usersDbRepository);

  @override
  SendErrorsLogService get sendErrorLog => SendErrorsLogService(
      usersPool: _usersPool, usersDbRepository: _usersDbRepository);

  @override
  StatisticDataService get statisticData => StatisticDataService(
      usersPool: _usersPool, usersDbRepository: _usersDbRepository);
}
