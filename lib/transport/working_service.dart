import 'package:grpc/grpc.dart';
import '../utils/logger.dart';
import 'user_services.dart';
import 'protos/generated/server_interactions.pbgrpc.dart';

class WorkingService extends InteractionsServiceBase {
  final UserServices _services;

  WorkingService(this._services);

  @override
  Future<StatisticsDataReply> adsStatisticData(
      ServiceCall call, AdsStatisticRequest request) {
    var adsStatisticData = _services.adsStatisticData;
    return adsStatisticData(token: _getToken(call), param: request);
  }

  @override
  Future<Empty> closeConnection(ServiceCall call, CloseInformation request) {
    var closeConnection = _services.closeConnection;
    return closeConnection(token: _getToken(call), param: request);
  }

  @override
  Future<ConnectionReply> establishConnection(
      ServiceCall call, ConnectionRequest request) {
    var establishConnection = _services.establishConnection;
    return establishConnection(params: request);
  }

  @override
  Future<StatisticsDataReply> sendErrorsLog(
      ServiceCall call, Stream<ErrorLogItem> request) {
    final sendErrorLogData = _services.sendErrorLog;
    return sendErrorLogData(token: _getToken(call), param: request);
  }

  @override
  Future<StatisticsDataReply> statisticsData(
      ServiceCall call, StatisticsDataRequest request) {
    var statisticData = _services.statisticData;
    return statisticData(token: _getToken(call), param: request);
  }

  String _getToken(ServiceCall call) {
    final metadata = call.clientMetadata ?? {};
    final idToken = metadata['token'];
    if (idToken == null) {
      logger('missing token in call $call');
      return '';
    }
    return idToken;
  }
}
