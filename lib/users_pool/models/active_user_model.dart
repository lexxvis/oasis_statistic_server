//dart run build_runner build
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_user_model.freezed.dart';

/// user roles :
/// [user] - game client
/// [admin] - admin flutter app
enum Role { user, admin }
/// model stores user descriptions
/// [playerId] - player ID of game client ( unique )
/// [sessionAESKey] - current session AES key uses to
/// encrypt current session communication, created on init connection procedure
/// [role] - user role
/// [lastActivityTime] - last activity user time
/// ( when user make request to the server)
@freezed
class ActiveUserModel with _$ActiveUserModel {
  const factory ActiveUserModel(
      {required String playerId,
      required Uint8List sessionAESKey,
      @Default(Role.user) Role role,
      required int lastActivityTime}) = _ActiveUserModel;
}
