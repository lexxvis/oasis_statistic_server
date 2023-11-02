import '../domain/services/ads_statistic_data_service.dart';
import '../domain/services/auth_admin_service.dart';
import '../domain/services/close_admin_connection_service.dart';
import '../domain/services/close_connection_service.dart';
import '../domain/services/establish_connection_service.dart';
import '../domain/services/send_errors_log_service.dart';
import '../domain/services/statistics_data_service.dart';

/// communication interface with domain layer
/// implements by DI service factory
abstract interface class UserServices {
  CloseConnectionService get closeConnection;
  EstablishConnectionService get establishConnection;
  AdsStatisticDataService get adsStatisticData;
  SendErrorsLogService get sendErrorLog;
  StatisticDataService get statisticData;
  AuthAdminService get authAdmin;
  CloseAdminConnectionService get closeAdminConnection;
}
