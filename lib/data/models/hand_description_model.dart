import 'package:freezed_annotation/freezed_annotation.dart';
part 'hand_description_model.g.dart';
part 'hand_description_model.freezed.dart';

typedef Card = ({String suit, String value});

/// Hand card description data model stored in SQLite
/// stored as json string in DB
@freezed
class HandDescriptionModel with _$HandDescriptionModel {
  const factory HandDescriptionModel(List<Card> cards) = _HandDescriptionModel;

  factory HandDescriptionModel.fromJson(Map<String, Object?> json)
  => _$HandDescriptionModelFromJson(json);
}

