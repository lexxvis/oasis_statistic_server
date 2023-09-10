// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_statisctic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GameStatisticModel {
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get ante => throw _privateConstructorUsedError;
  int get bet => throw _privateConstructorUsedError;
  int get win => throw _privateConstructorUsedError;
  String get playerId => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  int get goldBalance => throw _privateConstructorUsedError;
  HandDescriptionModel get dealerHand => throw _privateConstructorUsedError;
  HandDescriptionModel get playerHand => throw _privateConstructorUsedError;
  HandDescriptionModel get playerUnchangedHand =>
      throw _privateConstructorUsedError;
  GameResults get gameResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameStatisticModelCopyWith<GameStatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStatisticModelCopyWith<$Res> {
  factory $GameStatisticModelCopyWith(
          GameStatisticModel value, $Res Function(GameStatisticModel) then) =
      _$GameStatisticModelCopyWithImpl<$Res, GameStatisticModel>;
  @useResult
  $Res call(
      {DateTime dateTime,
      int ante,
      int bet,
      int win,
      String playerId,
      int level,
      int balance,
      int goldBalance,
      HandDescriptionModel dealerHand,
      HandDescriptionModel playerHand,
      HandDescriptionModel playerUnchangedHand,
      GameResults gameResults});

  $HandDescriptionModelCopyWith<$Res> get dealerHand;
  $HandDescriptionModelCopyWith<$Res> get playerHand;
  $HandDescriptionModelCopyWith<$Res> get playerUnchangedHand;
}

/// @nodoc
class _$GameStatisticModelCopyWithImpl<$Res, $Val extends GameStatisticModel>
    implements $GameStatisticModelCopyWith<$Res> {
  _$GameStatisticModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? ante = null,
    Object? bet = null,
    Object? win = null,
    Object? playerId = null,
    Object? level = null,
    Object? balance = null,
    Object? goldBalance = null,
    Object? dealerHand = null,
    Object? playerHand = null,
    Object? playerUnchangedHand = null,
    Object? gameResults = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ante: null == ante
          ? _value.ante
          : ante // ignore: cast_nullable_to_non_nullable
              as int,
      bet: null == bet
          ? _value.bet
          : bet // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      goldBalance: null == goldBalance
          ? _value.goldBalance
          : goldBalance // ignore: cast_nullable_to_non_nullable
              as int,
      dealerHand: null == dealerHand
          ? _value.dealerHand
          : dealerHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      playerHand: null == playerHand
          ? _value.playerHand
          : playerHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      playerUnchangedHand: null == playerUnchangedHand
          ? _value.playerUnchangedHand
          : playerUnchangedHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      gameResults: null == gameResults
          ? _value.gameResults
          : gameResults // ignore: cast_nullable_to_non_nullable
              as GameResults,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HandDescriptionModelCopyWith<$Res> get dealerHand {
    return $HandDescriptionModelCopyWith<$Res>(_value.dealerHand, (value) {
      return _then(_value.copyWith(dealerHand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HandDescriptionModelCopyWith<$Res> get playerHand {
    return $HandDescriptionModelCopyWith<$Res>(_value.playerHand, (value) {
      return _then(_value.copyWith(playerHand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HandDescriptionModelCopyWith<$Res> get playerUnchangedHand {
    return $HandDescriptionModelCopyWith<$Res>(_value.playerUnchangedHand,
        (value) {
      return _then(_value.copyWith(playerUnchangedHand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GameStatisticModelCopyWith<$Res>
    implements $GameStatisticModelCopyWith<$Res> {
  factory _$$_GameStatisticModelCopyWith(_$_GameStatisticModel value,
          $Res Function(_$_GameStatisticModel) then) =
      __$$_GameStatisticModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime dateTime,
      int ante,
      int bet,
      int win,
      String playerId,
      int level,
      int balance,
      int goldBalance,
      HandDescriptionModel dealerHand,
      HandDescriptionModel playerHand,
      HandDescriptionModel playerUnchangedHand,
      GameResults gameResults});

  @override
  $HandDescriptionModelCopyWith<$Res> get dealerHand;
  @override
  $HandDescriptionModelCopyWith<$Res> get playerHand;
  @override
  $HandDescriptionModelCopyWith<$Res> get playerUnchangedHand;
}

/// @nodoc
class __$$_GameStatisticModelCopyWithImpl<$Res>
    extends _$GameStatisticModelCopyWithImpl<$Res, _$_GameStatisticModel>
    implements _$$_GameStatisticModelCopyWith<$Res> {
  __$$_GameStatisticModelCopyWithImpl(
      _$_GameStatisticModel _value, $Res Function(_$_GameStatisticModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? ante = null,
    Object? bet = null,
    Object? win = null,
    Object? playerId = null,
    Object? level = null,
    Object? balance = null,
    Object? goldBalance = null,
    Object? dealerHand = null,
    Object? playerHand = null,
    Object? playerUnchangedHand = null,
    Object? gameResults = null,
  }) {
    return _then(_$_GameStatisticModel(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ante: null == ante
          ? _value.ante
          : ante // ignore: cast_nullable_to_non_nullable
              as int,
      bet: null == bet
          ? _value.bet
          : bet // ignore: cast_nullable_to_non_nullable
              as int,
      win: null == win
          ? _value.win
          : win // ignore: cast_nullable_to_non_nullable
              as int,
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      goldBalance: null == goldBalance
          ? _value.goldBalance
          : goldBalance // ignore: cast_nullable_to_non_nullable
              as int,
      dealerHand: null == dealerHand
          ? _value.dealerHand
          : dealerHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      playerHand: null == playerHand
          ? _value.playerHand
          : playerHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      playerUnchangedHand: null == playerUnchangedHand
          ? _value.playerUnchangedHand
          : playerUnchangedHand // ignore: cast_nullable_to_non_nullable
              as HandDescriptionModel,
      gameResults: null == gameResults
          ? _value.gameResults
          : gameResults // ignore: cast_nullable_to_non_nullable
              as GameResults,
    ));
  }
}

/// @nodoc

class _$_GameStatisticModel implements _GameStatisticModel {
  const _$_GameStatisticModel(
      {required this.dateTime,
      required this.ante,
      required this.bet,
      required this.win,
      required this.playerId,
      required this.level,
      required this.balance,
      required this.goldBalance,
      required this.dealerHand,
      required this.playerHand,
      required this.playerUnchangedHand,
      required this.gameResults});

  @override
  final DateTime dateTime;
  @override
  final int ante;
  @override
  final int bet;
  @override
  final int win;
  @override
  final String playerId;
  @override
  final int level;
  @override
  final int balance;
  @override
  final int goldBalance;
  @override
  final HandDescriptionModel dealerHand;
  @override
  final HandDescriptionModel playerHand;
  @override
  final HandDescriptionModel playerUnchangedHand;
  @override
  final GameResults gameResults;

  @override
  String toString() {
    return 'GameStatisticModel(dateTime: $dateTime, ante: $ante, bet: $bet, win: $win, playerId: $playerId, level: $level, balance: $balance, goldBalance: $goldBalance, dealerHand: $dealerHand, playerHand: $playerHand, playerUnchangedHand: $playerUnchangedHand, gameResults: $gameResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameStatisticModel &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.ante, ante) || other.ante == ante) &&
            (identical(other.bet, bet) || other.bet == bet) &&
            (identical(other.win, win) || other.win == win) &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.goldBalance, goldBalance) ||
                other.goldBalance == goldBalance) &&
            (identical(other.dealerHand, dealerHand) ||
                other.dealerHand == dealerHand) &&
            (identical(other.playerHand, playerHand) ||
                other.playerHand == playerHand) &&
            (identical(other.playerUnchangedHand, playerUnchangedHand) ||
                other.playerUnchangedHand == playerUnchangedHand) &&
            (identical(other.gameResults, gameResults) ||
                other.gameResults == gameResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dateTime,
      ante,
      bet,
      win,
      playerId,
      level,
      balance,
      goldBalance,
      dealerHand,
      playerHand,
      playerUnchangedHand,
      gameResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameStatisticModelCopyWith<_$_GameStatisticModel> get copyWith =>
      __$$_GameStatisticModelCopyWithImpl<_$_GameStatisticModel>(
          this, _$identity);
}

abstract class _GameStatisticModel implements GameStatisticModel {
  const factory _GameStatisticModel(
      {required final DateTime dateTime,
      required final int ante,
      required final int bet,
      required final int win,
      required final String playerId,
      required final int level,
      required final int balance,
      required final int goldBalance,
      required final HandDescriptionModel dealerHand,
      required final HandDescriptionModel playerHand,
      required final HandDescriptionModel playerUnchangedHand,
      required final GameResults gameResults}) = _$_GameStatisticModel;

  @override
  DateTime get dateTime;
  @override
  int get ante;
  @override
  int get bet;
  @override
  int get win;
  @override
  String get playerId;
  @override
  int get level;
  @override
  int get balance;
  @override
  int get goldBalance;
  @override
  HandDescriptionModel get dealerHand;
  @override
  HandDescriptionModel get playerHand;
  @override
  HandDescriptionModel get playerUnchangedHand;
  @override
  GameResults get gameResults;
  @override
  @JsonKey(ignore: true)
  _$$_GameStatisticModelCopyWith<_$_GameStatisticModel> get copyWith =>
      throw _privateConstructorUsedError;
}
