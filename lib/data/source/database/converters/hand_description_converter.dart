import 'dart:convert';

import 'package:drift/drift.dart';

import '../../../models/hand_description_model.dart';

class HandDescriptionConverter extends TypeConverter<HandDescriptionModel, String> {
  const HandDescriptionConverter();

  @override
  HandDescriptionModel fromSql(String fromDb) {
    return HandDescriptionModel.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(HandDescriptionModel value) {
    return json.encode(value.toJson());
  }
}