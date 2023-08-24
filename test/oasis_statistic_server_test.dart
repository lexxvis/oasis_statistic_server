import 'dart:typed_data';
import 'package:oasis_statistic_server/users_pool/users_pool_impl.dart';
import 'package:test/test.dart';

void main() {
  test('user pool test', () {
    var userPool = UsersPoolImpl();
    String playerId = 'playeroid';
    Uint8List key = Uint8List.fromList([128,4,5,68,7,82,3,99,4,5,2,99,3,5,6,156,212,5, 190]);
    String token = 'dsjkblduigluibgulirg';
    userPool.addUser(token: token, playerId: playerId, sessionAESKey: key);
    expect(userPool.doesUserExist(token), equals(true));
    expect(userPool.poolSize, equals(1));

    userPool.updateLastActiveTime(token);
    //var newUser = userPool.getUser(token);
   // expect([newUser?.playerId, newUser?.sessionAESKey], equals([playerId,key]));

  //  expect(userPool.poolSize, equals(0));

  });
}
