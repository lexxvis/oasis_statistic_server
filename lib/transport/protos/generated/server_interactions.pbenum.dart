//
//  Generated code. Do not modify.
//  source: server_interactions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ResultStatus extends $pb.ProtobufEnum {
  static const ResultStatus CODE_UNSPECIFIED = ResultStatus._(0, _omitEnumNames ? '' : 'CODE_UNSPECIFIED');
  static const ResultStatus OK = ResultStatus._(1, _omitEnumNames ? '' : 'OK');
  static const ResultStatus ERROR = ResultStatus._(2, _omitEnumNames ? '' : 'ERROR');
  static const ResultStatus TOKEN_NOT_FOUND = ResultStatus._(3, _omitEnumNames ? '' : 'TOKEN_NOT_FOUND');

  static const $core.List<ResultStatus> values = <ResultStatus> [
    CODE_UNSPECIFIED,
    OK,
    ERROR,
    TOKEN_NOT_FOUND,
  ];

  static final $core.Map<$core.int, ResultStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResultStatus? valueOf($core.int value) => _byValue[value];

  const ResultStatus._($core.int v, $core.String n) : super(v, n);
}

class AuthReply_Result extends $pb.ProtobufEnum {
  static const AuthReply_Result CODE_UNSPECIFIED = AuthReply_Result._(0, _omitEnumNames ? '' : 'CODE_UNSPECIFIED');
  static const AuthReply_Result OK = AuthReply_Result._(1, _omitEnumNames ? '' : 'OK');
  static const AuthReply_Result ERROR = AuthReply_Result._(2, _omitEnumNames ? '' : 'ERROR');
  static const AuthReply_Result ALREADY_EXIST = AuthReply_Result._(3, _omitEnumNames ? '' : 'ALREADY_EXIST');

  static const $core.List<AuthReply_Result> values = <AuthReply_Result> [
    CODE_UNSPECIFIED,
    OK,
    ERROR,
    ALREADY_EXIST,
  ];

  static final $core.Map<$core.int, AuthReply_Result> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AuthReply_Result? valueOf($core.int value) => _byValue[value];

  const AuthReply_Result._($core.int v, $core.String n) : super(v, n);
}

class AdsStatisticRequest_AdsSource extends $pb.ProtobufEnum {
  static const AdsStatisticRequest_AdsSource CODE_UNSPECIFIED = AdsStatisticRequest_AdsSource._(0, _omitEnumNames ? '' : 'CODE_UNSPECIFIED');
  static const AdsStatisticRequest_AdsSource UNITY_INTERSTITIALS = AdsStatisticRequest_AdsSource._(1, _omitEnumNames ? '' : 'UNITY_INTERSTITIALS');
  static const AdsStatisticRequest_AdsSource UNITY_REWARDED = AdsStatisticRequest_AdsSource._(2, _omitEnumNames ? '' : 'UNITY_REWARDED');
  static const AdsStatisticRequest_AdsSource UNITY_BANNER = AdsStatisticRequest_AdsSource._(3, _omitEnumNames ? '' : 'UNITY_BANNER');
  static const AdsStatisticRequest_AdsSource ADMOB_INTERSTITIALS = AdsStatisticRequest_AdsSource._(4, _omitEnumNames ? '' : 'ADMOB_INTERSTITIALS');
  static const AdsStatisticRequest_AdsSource ADMOB_REWARDED = AdsStatisticRequest_AdsSource._(5, _omitEnumNames ? '' : 'ADMOB_REWARDED');
  static const AdsStatisticRequest_AdsSource ADMOB_BANNER = AdsStatisticRequest_AdsSource._(6, _omitEnumNames ? '' : 'ADMOB_BANNER');

  static const $core.List<AdsStatisticRequest_AdsSource> values = <AdsStatisticRequest_AdsSource> [
    CODE_UNSPECIFIED,
    UNITY_INTERSTITIALS,
    UNITY_REWARDED,
    UNITY_BANNER,
    ADMOB_INTERSTITIALS,
    ADMOB_REWARDED,
    ADMOB_BANNER,
  ];

  static final $core.Map<$core.int, AdsStatisticRequest_AdsSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AdsStatisticRequest_AdsSource? valueOf($core.int value) => _byValue[value];

  const AdsStatisticRequest_AdsSource._($core.int v, $core.String n) : super(v, n);
}

class ConnectionReply_Result extends $pb.ProtobufEnum {
  static const ConnectionReply_Result CODE_UNSPECIFIED = ConnectionReply_Result._(0, _omitEnumNames ? '' : 'CODE_UNSPECIFIED');
  static const ConnectionReply_Result OK = ConnectionReply_Result._(1, _omitEnumNames ? '' : 'OK');
  static const ConnectionReply_Result ERROR = ConnectionReply_Result._(2, _omitEnumNames ? '' : 'ERROR');
  static const ConnectionReply_Result ALREADY_EXIST = ConnectionReply_Result._(3, _omitEnumNames ? '' : 'ALREADY_EXIST');

  static const $core.List<ConnectionReply_Result> values = <ConnectionReply_Result> [
    CODE_UNSPECIFIED,
    OK,
    ERROR,
    ALREADY_EXIST,
  ];

  static final $core.Map<$core.int, ConnectionReply_Result> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectionReply_Result? valueOf($core.int value) => _byValue[value];

  const ConnectionReply_Result._($core.int v, $core.String n) : super(v, n);
}

class CloseInformation_Result extends $pb.ProtobufEnum {
  static const CloseInformation_Result CODE_UNSPECIFIED = CloseInformation_Result._(0, _omitEnumNames ? '' : 'CODE_UNSPECIFIED');
  static const CloseInformation_Result NORMAL_ACTION = CloseInformation_Result._(1, _omitEnumNames ? '' : 'NORMAL_ACTION');
  static const CloseInformation_Result ERROR_ACTION = CloseInformation_Result._(2, _omitEnumNames ? '' : 'ERROR_ACTION');

  static const $core.List<CloseInformation_Result> values = <CloseInformation_Result> [
    CODE_UNSPECIFIED,
    NORMAL_ACTION,
    ERROR_ACTION,
  ];

  static final $core.Map<$core.int, CloseInformation_Result> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CloseInformation_Result? valueOf($core.int value) => _byValue[value];

  const CloseInformation_Result._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
