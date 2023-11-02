import '../../transport/protos/generated/server_interactions.pb.dart';
import '../users_pool.dart';

class CloseAdminConnectionService {
  final UsersPool _usersPool;

  CloseAdminConnectionService({required usersPool}) : _usersPool = usersPool;

  Future<Empty> call({required String token}) async {
    _usersPool.removeAdminByToken(token);
    return Empty();
  }
}
