import 'dart:async';
import 'dart:typed_data';
import '../domain/users_pool.dart';
import '../utils/logger.dart';
import 'models/active_user_model.dart';
/// users pool implementation
/// users pool manage all active user connections
/// store active connections in pool [_activeUsersPool]
final class UsersPoolImpl implements UsersPool {
  /// users pool stored all active user connections
  final _activeUsersPool = <String, ActiveUserModel>{};

  Timer? _timer;

  ///  after [_removeTimeOutMs] time out user is removed from user pool
  ///  monitor is called periodically with [_invokeDelaySec] delay
  static const int _removeTimeOutMs = 7 * 60 * 1000;
  static const int _invokeDelaySec = 40;
  int _maxUsersValue;

  UsersPoolImpl() : _maxUsersValue = 0 {
    _startUsersMonitor();
  }

  /// monitor checks time outs of all users in users pool
  /// and if time out exceeds const value [_removeTimeOutMs]
  /// user is removed from the pool
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
      Role role = Role.user,
      required Uint8List sessionAESKey}) {
    if (!_activeUsersPool.containsKey(token)) {
      _activeUsersPool[token] = ActiveUserModel(
          playerId: playerId,
          sessionAESKey: sessionAESKey,
          role: role,
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

  /// only one admin exists in system
  /// check if admin already logged in. Return false if no admin currently active
  /// in system, else return - true;
  @override
  bool checkIfAdminExist() {
    for (final user in _activeUsersPool.values) {
      if (user.role == Role.admin) return true;
    }
    return false;
  }

  @override
  void deleteAdmin() =>
      _activeUsersPool.removeWhere((_, value) => value.role == Role.admin);

  @override
  void removeAdminByToken(String token) {
    /// to prevent closing Admin connection from unknown source
    /// remove Admin from pool only if received token is equal of admin token
    if (_activeUsersPool[token]?.role == Role.admin) {
      logger('remove admin');
      _activeUsersPool.remove(token);
    }
  }
}
