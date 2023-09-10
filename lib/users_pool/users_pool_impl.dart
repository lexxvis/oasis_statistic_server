import 'dart:async';
import 'dart:typed_data';
import '../domain/users_pool.dart';
import '../utils/logger.dart';
import 'models/active_user_model.dart';

final class UsersPoolImpl implements UsersPool {
  final _activeUsersPool = <String, ActiveUserModel>{};

  Timer? _timer;

  static const int _removeTimeOutMs = 7 * 60 * 1000;
  static const int _invokeDelaySec = 40;
  int _maxUsersValue;

  UsersPoolImpl() : _maxUsersValue = 0 {
    _startUsersMonitor();
  }

  void _startUsersMonitor() {
    _timer ??=
        Timer.periodic(const Duration(seconds: _invokeDelaySec), (timer) {
      var currentMilliseconds = DateTime.now().millisecondsSinceEpoch;

      _activeUsersPool.removeWhere((key, user) =>
          (user.lastActivityTime + _removeTimeOutMs < currentMilliseconds));
      if (_activeUsersPool.isNotEmpty) {
        logger('users counter: ${_activeUsersPool.length}');
        logger('$_activeUsersPool');
      }
    });
  }

  @override
  void removeUser(String token) {
    _activeUsersPool.removeWhere((key, user) => (key == token));
  }

  @override
  int get poolSize => _activeUsersPool.length;

  @override
  int get maxUsersValue => _maxUsersValue;

  @override
  bool addUser(
      {required String token,
      required String playerId,
      required Uint8List sessionAESKey}) {
    if (!_activeUsersPool.containsKey(token)) {
      _activeUsersPool[token] = ActiveUserModel(
          playerId: playerId,
          sessionAESKey: sessionAESKey,
          lastActivityTime: DateTime.now().millisecondsSinceEpoch);
      if (_activeUsersPool.length > _maxUsersValue) {
        _maxUsersValue = _activeUsersPool.length;
      }
      return true;
    }
    return false;
  }

  @override
  bool doesUserExist(String token) => _activeUsersPool.containsKey(token);

  @override
  bool updateLastActiveTime(String token) {
    if (_activeUsersPool.containsKey(token)) {
      var item = _activeUsersPool[token];
      _activeUsersPool[token] = item!
          .copyWith(lastActivityTime: DateTime.now().millisecondsSinceEpoch);
      return true;
    }
    return false;
  }

  @override
  Uint8List? getAESKey(String token) => _activeUsersPool[token]?.sessionAESKey;

  @override
  String? getPlayerId(String token) => _activeUsersPool[token]?.playerId;

}
