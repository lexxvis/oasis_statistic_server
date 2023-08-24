//dart run build_runner build
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_user_model.freezed.dart';

@freezed
class ActiveUserModel with _$ActiveUserModel {
  const factory ActiveUserModel(
      {required String playerId,
      required Uint8List sessionAESKey,
      required int lastActivityTime}) = _ActiveUserModel;
}
