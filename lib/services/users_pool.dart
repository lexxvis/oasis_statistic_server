import 'dart:typed_data';

abstract interface class UsersPool {

  void removeUser(String token);

  bool addUser(
      {required String token,
      required String playerId,
      required Uint8List sessionAESKey});

  bool doesUserExist(String token);

  bool updateLastActiveTime(String token);

  Uint8List? getAESKey(String token);

  int get poolSize;

  int get maxUsersValue;
}
