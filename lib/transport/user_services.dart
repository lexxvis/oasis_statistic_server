import '../domain/services/ads_statistic_data_service.dart';
import '../domain/services/close_connection_service.dart';
import '../domain/services/establish_connection_service.dart';
import '../domain/services/send_errors_log_service.dart';
import '../domain/services/statistics_data_service.dart';

abstract interface class UserServices {
  CloseConnectionService get closeConnection;
  EstablishConnectionService get establishConnection;
  AdsStatisticDataService get adsStatisticData;
  SendErrorsLogService get sendErrorLog;
  StatisticDataService get statisticData;
}