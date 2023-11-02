//
//  Generated code. Do not modify.
//  source: server_interactions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'server_interactions.pb.dart' as $0;

export 'server_interactions.pb.dart';

@$pb.GrpcServiceName('server_interactions.Interactions')
class InteractionsClient extends $grpc.Client {
  static final _$establishConnection = $grpc.ClientMethod<$0.ConnectionRequest, $0.ConnectionReply>(
      '/server_interactions.Interactions/EstablishConnection',
      ($0.ConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ConnectionReply.fromBuffer(value));
  static final _$statisticsData = $grpc.ClientMethod<$0.StatisticsDataRequest, $0.StatisticsDataReply>(
      '/server_interactions.Interactions/StatisticsData',
      ($0.StatisticsDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatisticsDataReply.fromBuffer(value));
  static final _$adsStatisticData = $grpc.ClientMethod<$0.AdsStatisticRequest, $0.StatisticsDataReply>(
      '/server_interactions.Interactions/AdsStatisticData',
      ($0.AdsStatisticRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatisticsDataReply.fromBuffer(value));
  static final _$sendErrorsLog = $grpc.ClientMethod<$0.ErrorLogItem, $0.StatisticsDataReply>(
      '/server_interactions.Interactions/SendErrorsLog',
      ($0.ErrorLogItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatisticsDataReply.fromBuffer(value));
  static final _$closeConnection = $grpc.ClientMethod<$0.CloseInformation, $0.Empty>(
      '/server_interactions.Interactions/CloseConnection',
      ($0.CloseInformation value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$authAdmin = $grpc.ClientMethod<$0.AuthRequest, $0.AuthReply>(
      '/server_interactions.Interactions/AuthAdmin',
      ($0.AuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthReply.fromBuffer(value));
  static final _$closeAdminConnection = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/server_interactions.Interactions/CloseAdminConnection',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  InteractionsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ConnectionReply> establishConnection($0.ConnectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$establishConnection, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatisticsDataReply> statisticsData($0.StatisticsDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$statisticsData, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatisticsDataReply> adsStatisticData($0.AdsStatisticRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$adsStatisticData, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatisticsDataReply> sendErrorsLog($async.Stream<$0.ErrorLogItem> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendErrorsLog, request, options: options).single;
  }

  $grpc.ResponseFuture<$0.Empty> closeConnection($0.CloseInformation request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeConnection, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthReply> authAdmin($0.AuthRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> closeAdminConnection($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeAdminConnection, request, options: options);
  }
}

@$pb.GrpcServiceName('server_interactions.Interactions')
abstract class InteractionsServiceBase extends $grpc.Service {
  $core.String get $name => 'server_interactions.Interactions';

  InteractionsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ConnectionRequest, $0.ConnectionReply>(
        'EstablishConnection',
        establishConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ConnectionRequest.fromBuffer(value),
        ($0.ConnectionReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatisticsDataRequest, $0.StatisticsDataReply>(
        'StatisticsData',
        statisticsData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StatisticsDataRequest.fromBuffer(value),
        ($0.StatisticsDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AdsStatisticRequest, $0.StatisticsDataReply>(
        'AdsStatisticData',
        adsStatisticData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AdsStatisticRequest.fromBuffer(value),
        ($0.StatisticsDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ErrorLogItem, $0.StatisticsDataReply>(
        'SendErrorsLog',
        sendErrorsLog,
        true,
        false,
        ($core.List<$core.int> value) => $0.ErrorLogItem.fromBuffer(value),
        ($0.StatisticsDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CloseInformation, $0.Empty>(
        'CloseConnection',
        closeConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CloseInformation.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthReply>(
        'AuthAdmin',
        authAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'CloseAdminConnection',
        closeAdminConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ConnectionReply> establishConnection_Pre($grpc.ServiceCall call, $async.Future<$0.ConnectionRequest> request) async {
    return establishConnection(call, await request);
  }

  $async.Future<$0.StatisticsDataReply> statisticsData_Pre($grpc.ServiceCall call, $async.Future<$0.StatisticsDataRequest> request) async {
    return statisticsData(call, await request);
  }

  $async.Future<$0.StatisticsDataReply> adsStatisticData_Pre($grpc.ServiceCall call, $async.Future<$0.AdsStatisticRequest> request) async {
    return adsStatisticData(call, await request);
  }

  $async.Future<$0.Empty> closeConnection_Pre($grpc.ServiceCall call, $async.Future<$0.CloseInformation> request) async {
    return closeConnection(call, await request);
  }

  $async.Future<$0.AuthReply> authAdmin_Pre($grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return authAdmin(call, await request);
  }

  $async.Future<$0.Empty> closeAdminConnection_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return closeAdminConnection(call, await request);
  }

  $async.Future<$0.ConnectionReply> establishConnection($grpc.ServiceCall call, $0.ConnectionRequest request);
  $async.Future<$0.StatisticsDataReply> statisticsData($grpc.ServiceCall call, $0.StatisticsDataRequest request);
  $async.Future<$0.StatisticsDataReply> adsStatisticData($grpc.ServiceCall call, $0.AdsStatisticRequest request);
  $async.Future<$0.StatisticsDataReply> sendErrorsLog($grpc.ServiceCall call, $async.Stream<$0.ErrorLogItem> request);
  $async.Future<$0.Empty> closeConnection($grpc.ServiceCall call, $0.CloseInformation request);
  $async.Future<$0.AuthReply> authAdmin($grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.Empty> closeAdminConnection($grpc.ServiceCall call, $0.Empty request);
}
