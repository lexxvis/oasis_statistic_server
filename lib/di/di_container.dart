import '../data/repositories/users_db_repository_impl.dart';
import '../data/source/database/database.dart';
import '../domain/services/ads_statistic_data_service.dart';
import '../domain/services/auth_admin_service.dart';
import '../domain/services/close_admin_connection_service.dart';
import '../domain/services/close_connection_service.dart';
import '../domain/services/establish_connection_service.dart';
import '../domain/services/send_errors_log_service.dart';
import '../domain/services/statistics_data_service.dart';
import '../domain/users_db_repository.dart';
import '../domain/users_pool.dart';
import '../transport/user_services.dart';
import '../transport/working_service.dart';
import '../users_pool/users_pool_impl.dart';
/// DI container

/// create DI container and init all server dependencies
/// create and return base gRPC service with injected DI dependencies
WorkingService makeWorkingService() {
  final diContainer = _DIContainer();
  return WorkingService(diContainer._servicesFactory);
}

/// private DI container class
class _DIContainer {
  late final UsersDatabase _database;
  late final UsersDbRepository _usersDbRepository;
  late final UsersPool _userPool;
  late final ServicesFactory _servicesFactory;

  _DIContainer() {
    /// init database
    _database = UsersDatabase();
    /// init repository
    _usersDbRepository = UsersDbRepositoryImpl(_database);
    /// init user pool service
    _userPool = UsersPoolImpl();
    /// init services factory
    _servicesFactory = ServicesFactory(_userPool, _usersDbRepository);
  }
}

/// services factory, create end return services
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

  @override
  AuthAdminService get authAdmin => AuthAdminService(usersPool: _usersPool);

  @override
  get closeAdminConnection => CloseAdminConnectionService(usersPool: _usersPool);

}
