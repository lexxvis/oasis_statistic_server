import '../../transport/protos/generated/server_interactions.pb.dart';
import '../../utils/logger.dart';
import '../users_pool.dart';

class CloseConnectionService {
  final UsersPool _usersPool;

  CloseConnectionService({required usersPool}) : _usersPool = usersPool;

  Future<Empty> call({required String token, required CloseInformation param}) async {
    logger(
        'close connection from ${param.playerId} error code = ${param.result}, token = $token');
    _usersPool.removeUser(token);
    return Empty();
  }
}
