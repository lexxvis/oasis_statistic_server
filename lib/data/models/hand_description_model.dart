import 'package:freezed_annotation/freezed_annotation.dart';
part 'hand_description_model.g.dart';
part 'hand_description_model.freezed.dart';

typedef Card = ({String suit, String value});

@freezed
class HandDescriptionModel with _$HandDescriptionModel {
  const factory HandDescriptionModel(List<Card> cards) = _HandDescriptionModel;

  factory HandDescriptionModel.fromJson(Map<String, Object?> json)
  => _$HandDescriptionModelFromJson(json);
}

