import '../services/services/ads_statistic_data_service.dart';
import '../services/services/close_connection_service.dart';
import '../services/services/establish_connection_service.dart';
import '../services/services/send_errors_log_service.dart';
import '../services/services/statistics_data_service.dart';
import '../services/users_pool.dart';
import '../transport/user_services.dart';
import '../transport/working_service.dart';
import '../users_pool/users_pool_impl.dart';
import '../utils/logger.dart';

WorkingService makeWorkingService() {
  final diContainer = _DIContainer();
  final servicesFactory = ServicesFactory(diContainer._userPool);
  logger('init di container');
  return WorkingService(servicesFactory);
}

class _DIContainer {
  final UsersPool _userPool = UsersPoolImpl();
}

class ServicesFactory implements UserServices {
  final UsersPool _usersPool;

  ServicesFactory(this._usersPool);

  @override
  CloseConnectionService get closeConnection =>
      CloseConnectionService(usersPool: _usersPool);

  @override
  EstablishConnectionService get establishConnection =>
      EstablishConnectionService(usersPool: _usersPool);

  @override
  AdsStatisticDataService get adsStatisticData =>
      AdsStatisticDataService(usersPool: _usersPool);

  @override
  SendErrorsLogService get sendErrorLog =>
      SendErrorsLogService(usersPool: _usersPool);

  @override
  StatisticDataService get statisticData =>
      StatisticDataService(usersPool: _usersPool);
}
