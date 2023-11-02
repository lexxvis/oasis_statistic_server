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

import 'server_interactions.pbenum.dart';

export 'server_interactions.pbenum.dart';

class AuthRequest extends $pb.GeneratedMessage {
  factory AuthRequest({
    $core.List<$core.int>? encryptedAuthData,
    $core.List<$core.int>? dhExchangeKey,
  }) {
    final $result = create();
    if (encryptedAuthData != null) {
      $result.encryptedAuthData = encryptedAuthData;
    }
    if (dhExchangeKey != null) {
      $result.dhExchangeKey = dhExchangeKey;
    }
    return $result;
  }
  AuthRequest._() : super();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encryptedAuthData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'dhExchangeKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest)) as AuthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthRequest>(create);
  static AuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encryptedAuthData => $_getN(0);
  @$pb.TagNumber(1)
  set encryptedAuthData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncryptedAuthData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncryptedAuthData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dhExchangeKey => $_getN(1);
  @$pb.TagNumber(2)
  set dhExchangeKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDhExchangeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearDhExchangeKey() => clearField(2);
}

class EncryptedAuthData extends $pb.GeneratedMessage {
  factory EncryptedAuthData({
    $core.List<$core.int>? hash,
    $core.List<$core.int>? challenge,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (challenge != null) {
      $result.challenge = challenge;
    }
    return $result;
  }
  EncryptedAuthData._() : super();
  factory EncryptedAuthData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EncryptedAuthData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EncryptedAuthData', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'hash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'challenge', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EncryptedAuthData clone() => EncryptedAuthData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EncryptedAuthData copyWith(void Function(EncryptedAuthData) updates) => super.copyWith((message) => updates(message as EncryptedAuthData)) as EncryptedAuthData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EncryptedAuthData create() => EncryptedAuthData._();
  EncryptedAuthData createEmptyInstance() => create();
  static $pb.PbList<EncryptedAuthData> createRepeated() => $pb.PbList<EncryptedAuthData>();
  @$core.pragma('dart2js:noInline')
  static EncryptedAuthData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EncryptedAuthData>(create);
  static EncryptedAuthData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get challenge => $_getN(1);
  @$pb.TagNumber(2)
  set challenge($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChallenge() => $_has(1);
  @$pb.TagNumber(2)
  void clearChallenge() => clearField(2);
}

class AuthReply extends $pb.GeneratedMessage {
  factory AuthReply({
    AuthReply_Result? result,
    $core.List<$core.int>? dhExchangeKey,
    $core.List<$core.int>? digest,
    $core.String? token,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (dhExchangeKey != null) {
      $result.dhExchangeKey = dhExchangeKey;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  AuthReply._() : super();
  factory AuthReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuthReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..e<AuthReply_Result>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: AuthReply_Result.CODE_UNSPECIFIED, valueOf: AuthReply_Result.valueOf, enumValues: AuthReply_Result.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'dhExchangeKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuthReply clone() => AuthReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuthReply copyWith(void Function(AuthReply) updates) => super.copyWith((message) => updates(message as AuthReply)) as AuthReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuthReply create() => AuthReply._();
  AuthReply createEmptyInstance() => create();
  static $pb.PbList<AuthReply> createRepeated() => $pb.PbList<AuthReply>();
  @$core.pragma('dart2js:noInline')
  static AuthReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuthReply>(create);
  static AuthReply? _defaultInstance;

  @$pb.TagNumber(1)
  AuthReply_Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(AuthReply_Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dhExchangeKey => $_getN(1);
  @$pb.TagNumber(2)
  set dhExchangeKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDhExchangeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearDhExchangeKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get digest => $_getN(2);
  @$pb.TagNumber(3)
  set digest($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class ErrorLogItem extends $pb.GeneratedMessage {
  factory ErrorLogItem({
    $core.List<$core.int>? message,
    $core.List<$core.int>? digest,
    $core.List<$core.int>? iv,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    if (iv != null) {
      $result.iv = iv;
    }
    return $result;
  }
  ErrorLogItem._() : super();
  factory ErrorLogItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorLogItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrorLogItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'message', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'iv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorLogItem clone() => ErrorLogItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorLogItem copyWith(void Function(ErrorLogItem) updates) => super.copyWith((message) => updates(message as ErrorLogItem)) as ErrorLogItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorLogItem create() => ErrorLogItem._();
  ErrorLogItem createEmptyInstance() => create();
  static $pb.PbList<ErrorLogItem> createRepeated() => $pb.PbList<ErrorLogItem>();
  @$core.pragma('dart2js:noInline')
  static ErrorLogItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorLogItem>(create);
  static ErrorLogItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get message => $_getN(0);
  @$pb.TagNumber(1)
  set message($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get digest => $_getN(1);
  @$pb.TagNumber(2)
  set digest($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDigest() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigest() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get iv => $_getN(2);
  @$pb.TagNumber(3)
  set iv($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIv() => $_has(2);
  @$pb.TagNumber(3)
  void clearIv() => clearField(3);
}

class AdsStatisticRequest extends $pb.GeneratedMessage {
  factory AdsStatisticRequest({
    AdsStatisticRequest_AdsSource? adsSource,
    $core.List<$core.int>? digest,
  }) {
    final $result = create();
    if (adsSource != null) {
      $result.adsSource = adsSource;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    return $result;
  }
  AdsStatisticRequest._() : super();
  factory AdsStatisticRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdsStatisticRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdsStatisticRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..e<AdsStatisticRequest_AdsSource>(1, _omitFieldNames ? '' : 'adsSource', $pb.PbFieldType.OE, defaultOrMaker: AdsStatisticRequest_AdsSource.CODE_UNSPECIFIED, valueOf: AdsStatisticRequest_AdsSource.valueOf, enumValues: AdsStatisticRequest_AdsSource.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdsStatisticRequest clone() => AdsStatisticRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdsStatisticRequest copyWith(void Function(AdsStatisticRequest) updates) => super.copyWith((message) => updates(message as AdsStatisticRequest)) as AdsStatisticRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdsStatisticRequest create() => AdsStatisticRequest._();
  AdsStatisticRequest createEmptyInstance() => create();
  static $pb.PbList<AdsStatisticRequest> createRepeated() => $pb.PbList<AdsStatisticRequest>();
  @$core.pragma('dart2js:noInline')
  static AdsStatisticRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdsStatisticRequest>(create);
  static AdsStatisticRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AdsStatisticRequest_AdsSource get adsSource => $_getN(0);
  @$pb.TagNumber(1)
  set adsSource(AdsStatisticRequest_AdsSource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdsSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdsSource() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get digest => $_getN(1);
  @$pb.TagNumber(2)
  set digest($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDigest() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigest() => clearField(2);
}

class StatisticsDataRequest extends $pb.GeneratedMessage {
  factory StatisticsDataRequest({
    $core.List<$core.int>? encryptedData,
    $core.List<$core.int>? digest,
    $core.List<$core.int>? iv,
  }) {
    final $result = create();
    if (encryptedData != null) {
      $result.encryptedData = encryptedData;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    if (iv != null) {
      $result.iv = iv;
    }
    return $result;
  }
  StatisticsDataRequest._() : super();
  factory StatisticsDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticsDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatisticsDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encryptedData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'iv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticsDataRequest clone() => StatisticsDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticsDataRequest copyWith(void Function(StatisticsDataRequest) updates) => super.copyWith((message) => updates(message as StatisticsDataRequest)) as StatisticsDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatisticsDataRequest create() => StatisticsDataRequest._();
  StatisticsDataRequest createEmptyInstance() => create();
  static $pb.PbList<StatisticsDataRequest> createRepeated() => $pb.PbList<StatisticsDataRequest>();
  @$core.pragma('dart2js:noInline')
  static StatisticsDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticsDataRequest>(create);
  static StatisticsDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encryptedData => $_getN(0);
  @$pb.TagNumber(1)
  set encryptedData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncryptedData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncryptedData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get digest => $_getN(1);
  @$pb.TagNumber(2)
  set digest($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDigest() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigest() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get iv => $_getN(2);
  @$pb.TagNumber(3)
  set iv($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIv() => $_has(2);
  @$pb.TagNumber(3)
  void clearIv() => clearField(3);
}

class StatisticsDataReply extends $pb.GeneratedMessage {
  factory StatisticsDataReply({
    ResultStatus? result,
    $core.List<$core.int>? digest,
    $core.List<$core.int>? iv,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    if (iv != null) {
      $result.iv = iv;
    }
    return $result;
  }
  StatisticsDataReply._() : super();
  factory StatisticsDataReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatisticsDataReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatisticsDataReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..e<ResultStatus>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: ResultStatus.CODE_UNSPECIFIED, valueOf: ResultStatus.valueOf, enumValues: ResultStatus.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'iv', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatisticsDataReply clone() => StatisticsDataReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatisticsDataReply copyWith(void Function(StatisticsDataReply) updates) => super.copyWith((message) => updates(message as StatisticsDataReply)) as StatisticsDataReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatisticsDataReply create() => StatisticsDataReply._();
  StatisticsDataReply createEmptyInstance() => create();
  static $pb.PbList<StatisticsDataReply> createRepeated() => $pb.PbList<StatisticsDataReply>();
  @$core.pragma('dart2js:noInline')
  static StatisticsDataReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatisticsDataReply>(create);
  static StatisticsDataReply? _defaultInstance;

  @$pb.TagNumber(1)
  ResultStatus get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ResultStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get digest => $_getN(1);
  @$pb.TagNumber(2)
  set digest($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDigest() => $_has(1);
  @$pb.TagNumber(2)
  void clearDigest() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get iv => $_getN(2);
  @$pb.TagNumber(3)
  set iv($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIv() => $_has(2);
  @$pb.TagNumber(3)
  void clearIv() => clearField(3);
}

class ConnectionRequest extends $pb.GeneratedMessage {
  factory ConnectionRequest({
    $core.List<$core.int>? encryptedData,
    $core.List<$core.int>? dhExchangeKey,
  }) {
    final $result = create();
    if (encryptedData != null) {
      $result.encryptedData = encryptedData;
    }
    if (dhExchangeKey != null) {
      $result.dhExchangeKey = dhExchangeKey;
    }
    return $result;
  }
  ConnectionRequest._() : super();
  factory ConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'encryptedData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'dhExchangeKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionRequest clone() => ConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionRequest copyWith(void Function(ConnectionRequest) updates) => super.copyWith((message) => updates(message as ConnectionRequest)) as ConnectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionRequest create() => ConnectionRequest._();
  ConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectionRequest> createRepeated() => $pb.PbList<ConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionRequest>(create);
  static ConnectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get encryptedData => $_getN(0);
  @$pb.TagNumber(1)
  set encryptedData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEncryptedData() => $_has(0);
  @$pb.TagNumber(1)
  void clearEncryptedData() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dhExchangeKey => $_getN(1);
  @$pb.TagNumber(2)
  set dhExchangeKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDhExchangeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearDhExchangeKey() => clearField(2);
}

class ConnectionReply extends $pb.GeneratedMessage {
  factory ConnectionReply({
    ConnectionReply_Result? result,
    $core.List<$core.int>? dhExchangeKey,
    $core.List<$core.int>? digest,
    $core.String? token,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (dhExchangeKey != null) {
      $result.dhExchangeKey = dhExchangeKey;
    }
    if (digest != null) {
      $result.digest = digest;
    }
    if (token != null) {
      $result.token = token;
    }
    return $result;
  }
  ConnectionReply._() : super();
  factory ConnectionReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..e<ConnectionReply_Result>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: ConnectionReply_Result.CODE_UNSPECIFIED, valueOf: ConnectionReply_Result.valueOf, enumValues: ConnectionReply_Result.values)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'dhExchangeKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'digest', $pb.PbFieldType.OY)
    ..aOS(4, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionReply clone() => ConnectionReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionReply copyWith(void Function(ConnectionReply) updates) => super.copyWith((message) => updates(message as ConnectionReply)) as ConnectionReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionReply create() => ConnectionReply._();
  ConnectionReply createEmptyInstance() => create();
  static $pb.PbList<ConnectionReply> createRepeated() => $pb.PbList<ConnectionReply>();
  @$core.pragma('dart2js:noInline')
  static ConnectionReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionReply>(create);
  static ConnectionReply? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectionReply_Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(ConnectionReply_Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get dhExchangeKey => $_getN(1);
  @$pb.TagNumber(2)
  set dhExchangeKey($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDhExchangeKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearDhExchangeKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get digest => $_getN(2);
  @$pb.TagNumber(3)
  set digest($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDigest() => $_has(2);
  @$pb.TagNumber(3)
  void clearDigest() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get token => $_getSZ(3);
  @$pb.TagNumber(4)
  set token($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class CloseInformation extends $pb.GeneratedMessage {
  factory CloseInformation({
    CloseInformation_Result? result,
    $core.String? playerId,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (playerId != null) {
      $result.playerId = playerId;
    }
    return $result;
  }
  CloseInformation._() : super();
  factory CloseInformation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CloseInformation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CloseInformation', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..e<CloseInformation_Result>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OE, defaultOrMaker: CloseInformation_Result.CODE_UNSPECIFIED, valueOf: CloseInformation_Result.valueOf, enumValues: CloseInformation_Result.values)
    ..aOS(2, _omitFieldNames ? '' : 'playerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CloseInformation clone() => CloseInformation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CloseInformation copyWith(void Function(CloseInformation) updates) => super.copyWith((message) => updates(message as CloseInformation)) as CloseInformation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseInformation create() => CloseInformation._();
  CloseInformation createEmptyInstance() => create();
  static $pb.PbList<CloseInformation> createRepeated() => $pb.PbList<CloseInformation>();
  @$core.pragma('dart2js:noInline')
  static CloseInformation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseInformation>(create);
  static CloseInformation? _defaultInstance;

  @$pb.TagNumber(1)
  CloseInformation_Result get result => $_getN(0);
  @$pb.TagNumber(1)
  set result(CloseInformation_Result v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get playerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set playerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerId() => clearField(2);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'server_interactions'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
