//
//  Generated code. Do not modify.
//  source: intermediate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConnectionRequestData extends $pb.GeneratedMessage {
  factory ConnectionRequestData({
    $core.String? playerId,
    $core.String? countryCode,
  }) {
    final $result = create();
    if (playerId != null) {
      $result.playerId = playerId;
    }
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    return $result;
  }
  ConnectionRequestData._() : super();
  factory ConnectionRequestData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequestData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConnectionRequestData', package: const $pb.PackageName(_omitMessageNames ? '' : 'intermediate'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'playerId')
    ..aOS(2, _omitFieldNames ? '' : 'countryCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectionRequestData clone() => ConnectionRequestData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectionRequestData copyWith(void Function(ConnectionRequestData) updates) => super.copyWith((message) => updates(message as ConnectionRequestData)) as ConnectionRequestData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectionRequestData create() => ConnectionRequestData._();
  ConnectionRequestData createEmptyInstance() => create();
  static $pb.PbList<ConnectionRequestData> createRepeated() => $pb.PbList<ConnectionRequestData>();
  @$core.pragma('dart2js:noInline')
  static ConnectionRequestData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectionRequestData>(create);
  static ConnectionRequestData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryCode() => clearField(2);
}

class GameStatisticData_CardDescription extends $pb.GeneratedMessage {
  factory GameStatisticData_CardDescription({
    $core.int? suit,
    $core.int? value,
  }) {
    final $result = create();
    if (suit != null) {
      $result.suit = suit;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  GameStatisticData_CardDescription._() : super();
  factory GameStatisticData_CardDescription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameStatisticData_CardDescription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameStatisticData.CardDescription', package: const $pb.PackageName(_omitMessageNames ? '' : 'intermediate'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'suit', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameStatisticData_CardDescription clone() => GameStatisticData_CardDescription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameStatisticData_CardDescription copyWith(void Function(GameStatisticData_CardDescription) updates) => super.copyWith((message) => updates(message as GameStatisticData_CardDescription)) as GameStatisticData_CardDescription;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameStatisticData_CardDescription create() => GameStatisticData_CardDescription._();
  GameStatisticData_CardDescription createEmptyInstance() => create();
  static $pb.PbList<GameStatisticData_CardDescription> createRepeated() => $pb.PbList<GameStatisticData_CardDescription>();
  @$core.pragma('dart2js:noInline')
  static GameStatisticData_CardDescription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameStatisticData_CardDescription>(create);
  static GameStatisticData_CardDescription? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get suit => $_getIZ(0);
  @$pb.TagNumber(1)
  set suit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuit() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuit() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class GameStatisticData extends $pb.GeneratedMessage {
  factory GameStatisticData({
    $core.int? balance,
    $core.int? goldBalance,
    $core.int? bet,
    $core.int? win,
    $core.int? ante,
    $core.int? level,
    $core.int? gameResult,
    $core.Iterable<GameStatisticData_CardDescription>? dealerHand,
    $core.Iterable<GameStatisticData_CardDescription>? playerHand,
    $core.Iterable<GameStatisticData_CardDescription>? playerUnchangedHand,
  }) {
    final $result = create();
    if (balance != null) {
      $result.balance = balance;
    }
    if (goldBalance != null) {
      $result.goldBalance = goldBalance;
    }
    if (bet != null) {
      $result.bet = bet;
    }
    if (win != null) {
      $result.win = win;
    }
    if (ante != null) {
      $result.ante = ante;
    }
    if (level != null) {
      $result.level = level;
    }
    if (gameResult != null) {
      $result.gameResult = gameResult;
    }
    if (dealerHand != null) {
      $result.dealerHand.addAll(dealerHand);
    }
    if (playerHand != null) {
      $result.playerHand.addAll(playerHand);
    }
    if (playerUnchangedHand != null) {
      $result.playerUnchangedHand.addAll(playerUnchangedHand);
    }
    return $result;
  }
  GameStatisticData._() : super();
  factory GameStatisticData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GameStatisticData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GameStatisticData', package: const $pb.PackageName(_omitMessageNames ? '' : 'intermediate'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'goldBalance', $pb.PbFieldType.O3, protoName: 'goldBalance')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bet', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'win', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'ante', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'gameResult', $pb.PbFieldType.O3, protoName: 'gameResult')
    ..pc<GameStatisticData_CardDescription>(9, _omitFieldNames ? '' : 'dealerHand', $pb.PbFieldType.PM, protoName: 'dealerHand', subBuilder: GameStatisticData_CardDescription.create)
    ..pc<GameStatisticData_CardDescription>(10, _omitFieldNames ? '' : 'playerHand', $pb.PbFieldType.PM, protoName: 'playerHand', subBuilder: GameStatisticData_CardDescription.create)
    ..pc<GameStatisticData_CardDescription>(11, _omitFieldNames ? '' : 'playerUnchangedHand', $pb.PbFieldType.PM, protoName: 'playerUnchangedHand', subBuilder: GameStatisticData_CardDescription.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GameStatisticData clone() => GameStatisticData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GameStatisticData copyWith(void Function(GameStatisticData) updates) => super.copyWith((message) => updates(message as GameStatisticData)) as GameStatisticData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GameStatisticData create() => GameStatisticData._();
  GameStatisticData createEmptyInstance() => create();
  static $pb.PbList<GameStatisticData> createRepeated() => $pb.PbList<GameStatisticData>();
  @$core.pragma('dart2js:noInline')
  static GameStatisticData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GameStatisticData>(create);
  static GameStatisticData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get balance => $_getIZ(0);
  @$pb.TagNumber(1)
  set balance($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get goldBalance => $_getIZ(1);
  @$pb.TagNumber(2)
  set goldBalance($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoldBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoldBalance() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get bet => $_getIZ(2);
  @$pb.TagNumber(3)
  set bet($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBet() => $_has(2);
  @$pb.TagNumber(3)
  void clearBet() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get win => $_getIZ(3);
  @$pb.TagNumber(4)
  set win($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWin() => $_has(3);
  @$pb.TagNumber(4)
  void clearWin() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get ante => $_getIZ(4);
  @$pb.TagNumber(5)
  set ante($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAnte() => $_has(4);
  @$pb.TagNumber(5)
  void clearAnte() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get level => $_getIZ(5);
  @$pb.TagNumber(6)
  set level($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLevel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get gameResult => $_getIZ(6);
  @$pb.TagNumber(7)
  set gameResult($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGameResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearGameResult() => clearField(7);

  @$pb.TagNumber(9)
  $core.List<GameStatisticData_CardDescription> get dealerHand => $_getList(7);

  @$pb.TagNumber(10)
  $core.List<GameStatisticData_CardDescription> get playerHand => $_getList(8);

  @$pb.TagNumber(11)
  $core.List<GameStatisticData_CardDescription> get playerUnchangedHand => $_getList(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
