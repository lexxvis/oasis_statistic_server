import 'package:grpc/grpc.dart';
import '../utils/logger.dart';
import 'user_services.dart';
import 'protos/generated/server_interactions.pbgrpc.dart';

/// main working service gRPC class
/// all requests from clients  are handled here
/// injected from DI user services
class WorkingService extends InteractionsServiceBase {
  final UserServices _services;

  WorkingService(this._services);

  /// services from game clients
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
    logger('establish connection hash = ${establishConnection.hashCode}');
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


  /// extract token from request
  String _getToken(ServiceCall call) {
    final metadata = call.clientMetadata ?? {};
    final idToken = metadata['token'];
    if (idToken == null) {
      logger('missing token in call $call');
      return '';
    }
    return idToken;
  }

  ///  services from flutter admin app
  @override
  Future<AuthReply> authAdmin(ServiceCall call, AuthRequest request) {
    var authAdmin = _services.authAdmin;
    logger('auth admin hash = ${authAdmin.hashCode}');
    return authAdmin(param: request);
  }

  @override
  Future<Empty> closeAdminConnection(ServiceCall call, Empty request) {
    logger('close admin connection');
    var closeAdminConnection = _services.closeAdminConnection;
    return closeAdminConnection(token: _getToken(call));
  }

}

