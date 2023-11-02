import 'dart:typed_data';

import '../users_pool/models/active_user_model.dart';

/// interface to communicate with user pool
abstract interface class UsersPool {

  void removeUser(String token);

  bool addUser({required String token,
    required String playerId,
    Role role = Role.user,
    required Uint8List sessionAESKey});

  bool doesUserExist(String token);

  bool updateLastActiveTime(String token);

  String? getPlayerId(String token);

  Uint8List? getAESKey(String token);

  bool checkIfAdminExist();

  void deleteAdmin();

  void removeAdminByToken(String token);

  int get poolSize;

  int get maxUsersValue;
}
