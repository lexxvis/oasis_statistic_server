// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hand_description_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HandDescriptionModel _$HandDescriptionModelFromJson(Map<String, dynamic> json) {
  return _HandDescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$HandDescriptionModel {
  List<({String suit, String value})> get cards =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HandDescriptionModelCopyWith<HandDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandDescriptionModelCopyWith<$Res> {
  factory $HandDescriptionModelCopyWith(HandDescriptionModel value,
          $Res Function(HandDescriptionModel) then) =
      _$HandDescriptionModelCopyWithImpl<$Res, HandDescriptionModel>;
  @useResult
  $Res call({List<({String suit, String value})> cards});
}

/// @nodoc
class _$HandDescriptionModelCopyWithImpl<$Res,
        $Val extends HandDescriptionModel>
    implements $HandDescriptionModelCopyWith<$Res> {
  _$HandDescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<({String suit, String value})>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HandDescriptionModelCopyWith<$Res>
    implements $HandDescriptionModelCopyWith<$Res> {
  factory _$$_HandDescriptionModelCopyWith(_$_HandDescriptionModel value,
          $Res Function(_$_HandDescriptionModel) then) =
      __$$_HandDescriptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<({String suit, String value})> cards});
}

/// @nodoc
class __$$_HandDescriptionModelCopyWithImpl<$Res>
    extends _$HandDescriptionModelCopyWithImpl<$Res, _$_HandDescriptionModel>
    implements _$$_HandDescriptionModelCopyWith<$Res> {
  __$$_HandDescriptionModelCopyWithImpl(_$_HandDescriptionModel _value,
      $Res Function(_$_HandDescriptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$_HandDescriptionModel(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<({String suit, String value})>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HandDescriptionModel implements _HandDescriptionModel {
  const _$_HandDescriptionModel(final List<({String suit, String value})> cards)
      : _cards = cards;

  factory _$_HandDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_HandDescriptionModelFromJson(json);

  final List<({String suit, String value})> _cards;
  @override
  List<({String suit, String value})> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'HandDescriptionModel(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HandDescriptionModel &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HandDescriptionModelCopyWith<_$_HandDescriptionModel> get copyWith =>
      __$$_HandDescriptionModelCopyWithImpl<_$_HandDescriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HandDescriptionModelToJson(
      this,
    );
  }
}

abstract class _HandDescriptionModel implements HandDescriptionModel {
  const factory _HandDescriptionModel(
          final List<({String suit, String value})> cards) =
      _$_HandDescriptionModel;

  factory _HandDescriptionModel.fromJson(Map<String, dynamic> json) =
      _$_HandDescriptionModel.fromJson;

  @override
  List<({String suit, String value})> get cards;
  @override
  @JsonKey(ignore: true)
  _$$_HandDescriptionModelCopyWith<_$_HandDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
