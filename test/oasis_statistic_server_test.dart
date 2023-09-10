import 'package:oasis_statistic_server/crypto/crypto_helpers.dart';
import 'package:oasis_statistic_server/data/models/game_statisctic_model.dart';
import 'package:oasis_statistic_server/data/models/hand_description_model.dart';
import 'package:oasis_statistic_server/data/source/database/converters/hand_description_converter.dart';
import 'package:oasis_statistic_server/utils/cards_codecs.dart';
import 'package:oasis_statistic_server/utils/country_codes_decoder.dart';
import 'package:test/test.dart';

void main() {
  test('country codes func test', () {
    print('start');
    var crc = calculateCRC32(' ');
    print(crc);
  //  expect(countryCodesDecode('   esH   '), 'Western Sahara');
  });

  // test('generate token test', () {
  //   var list = <String>[];
  //   var testId = ['WIY8KYBYCMTIYWU', '56LPSDFYCMKTTFU'];
  //   for(int i = 0; i < 100000; i++) {
  //     String token = generateToken(testId[i%2]);
  //     expect(list.contains(token), false);
  //     expect(token.length, 64);
  //     list.add(token);
  //   }

//  });

  //test('user pool test', () {
    //print('token = $token');
    // var userPool = UsersPoolImpl();
    // String playerId = 'playeroid';
    // Uint8List key = Uint8List.fromList([128,4,5,68,7,82,3,99,4,5,2,99,3,5,6,156,212,5, 190]);
    // String token = 'dsjkblduigluibgulirg';
    // userPool.addUser(token: token, playerId: playerId, sessionAESKey: key);
    // expect(userPool.doesUserExist(token), equals(true));
    // expect(userPool.poolSize, equals(1));
    //
    // userPool.updateLastActiveTime(token);
    //var newUser = userPool.getUser(token);
   // expect([newUser?.playerId, newUser?.sessionAESKey], equals([playerId,key]));

  //  expect(userPool.poolSize, equals(0));

  //});
}
