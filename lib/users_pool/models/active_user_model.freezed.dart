// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActiveUserModel {
  String get playerId => throw _privateConstructorUsedError;
  Uint8List get sessionAESKey => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  int get lastActivityTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveUserModelCopyWith<ActiveUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveUserModelCopyWith<$Res> {
  factory $ActiveUserModelCopyWith(
          ActiveUserModel value, $Res Function(ActiveUserModel) then) =
      _$ActiveUserModelCopyWithImpl<$Res, ActiveUserModel>;
  @useResult
  $Res call(
      {String playerId,
      Uint8List sessionAESKey,
      Role role,
      int lastActivityTime});
}

/// @nodoc
class _$ActiveUserModelCopyWithImpl<$Res, $Val extends ActiveUserModel>
    implements $ActiveUserModelCopyWith<$Res> {
  _$ActiveUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? sessionAESKey = null,
    Object? role = null,
    Object? lastActivityTime = null,
  }) {
    return _then(_value.copyWith(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionAESKey: null == sessionAESKey
          ? _value.sessionAESKey
          : sessionAESKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      lastActivityTime: null == lastActivityTime
          ? _value.lastActivityTime
          : lastActivityTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveUserModelCopyWith<$Res>
    implements $ActiveUserModelCopyWith<$Res> {
  factory _$$_ActiveUserModelCopyWith(
          _$_ActiveUserModel value, $Res Function(_$_ActiveUserModel) then) =
      __$$_ActiveUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String playerId,
      Uint8List sessionAESKey,
      Role role,
      int lastActivityTime});
}

/// @nodoc
class __$$_ActiveUserModelCopyWithImpl<$Res>
    extends _$ActiveUserModelCopyWithImpl<$Res, _$_ActiveUserModel>
    implements _$$_ActiveUserModelCopyWith<$Res> {
  __$$_ActiveUserModelCopyWithImpl(
      _$_ActiveUserModel _value, $Res Function(_$_ActiveUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerId = null,
    Object? sessionAESKey = null,
    Object? role = null,
    Object? lastActivityTime = null,
  }) {
    return _then(_$_ActiveUserModel(
      playerId: null == playerId
          ? _value.playerId
          : playerId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionAESKey: null == sessionAESKey
          ? _value.sessionAESKey
          : sessionAESKey // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      lastActivityTime: null == lastActivityTime
          ? _value.lastActivityTime
          : lastActivityTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ActiveUserModel implements _ActiveUserModel {
  const _$_ActiveUserModel(
      {required this.playerId,
      required this.sessionAESKey,
      this.role = Role.user,
      required this.lastActivityTime});

  @override
  final String playerId;
  @override
  final Uint8List sessionAESKey;
  @override
  @JsonKey()
  final Role role;
  @override
  final int lastActivityTime;

  @override
  String toString() {
    return 'ActiveUserModel(playerId: $playerId, sessionAESKey: $sessionAESKey, role: $role, lastActivityTime: $lastActivityTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveUserModel &&
            (identical(other.playerId, playerId) ||
                other.playerId == playerId) &&
            const DeepCollectionEquality()
                .equals(other.sessionAESKey, sessionAESKey) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.lastActivityTime, lastActivityTime) ||
                other.lastActivityTime == lastActivityTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      playerId,
      const DeepCollectionEquality().hash(sessionAESKey),
      role,
      lastActivityTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveUserModelCopyWith<_$_ActiveUserModel> get copyWith =>
      __$$_ActiveUserModelCopyWithImpl<_$_ActiveUserModel>(this, _$identity);
}

abstract class _ActiveUserModel implements ActiveUserModel {
  const factory _ActiveUserModel(
      {required final String playerId,
      required final Uint8List sessionAESKey,
      final Role role,
      required final int lastActivityTime}) = _$_ActiveUserModel;

  @override
  String get playerId;
  @override
  Uint8List get sessionAESKey;
  @override
  Role get role;
  @override
  int get lastActivityTime;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveUserModelCopyWith<_$_ActiveUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
