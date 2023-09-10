// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hand_description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HandDescriptionModel _$$_HandDescriptionModelFromJson(
        Map<String, dynamic> json) =>
    _$_HandDescriptionModel(
      (json['cards'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  suit: $jsonValue['suit'] as String,
                  value: $jsonValue['value'] as String,
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$_HandDescriptionModelToJson(
        _$_HandDescriptionModel instance) =>
    <String, dynamic>{
      'cards': instance.cards
          .map((e) => {
                'suit': e.suit,
                'value': e.value,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
