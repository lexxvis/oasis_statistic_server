import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/api.dart';
import 'package:pointycastle/digests/sha256.dart';

import 'crypto_helpers.dart';


class DiffieHellman {

  final int _keyLength;

  final BigInt _p = BigInt.parse( //2048-bit MODP Group
      '0xFFFFFFFFFFFFFFFFC90FDAA22168C234C4C6628B80DC1CD1'
        '29024E088A67CC74020BBEA63B139B22514A08798E3404DD'
        'EF9519B3CD3A431B302B0A6DF25F14374FE1356D6D51C245'
        'E485B576625E7EC6F44C42E9A637ED6B0BFF5CB6F406B7ED'
        'EE386BFB5A899FA5AE9F24117C4B1FE649286651ECE45B3D'
        'C2007CB8A163BF0598DA48361C55D39A69163FA8FD24CF5F'
        '83655D23DCA3AD961C62F356208552BB9ED529077096966D'
        '670C354E4ABC9804F1746C08CA18217C32905E462E36CE3B'
        'E39E772C180E86039B2783A2EC07A28FB5C55DF06F4C52C9'
        'DE2BCBF6955817183995497CEA956AE515D2261898FA0510'
        '15728E5A8AACAA68FFFFFFFFFFFFFFFF'
  );


  final BigInt _g = BigInt.from(2);
  BigInt _secretKey = BigInt.zero;


  DiffieHellman(this._keyLength) {
    _generateSecretKey();
  }

  BigInt _gen(int bits) {
    final sGen = Random.secure();
    var n = BigInt.from(1);
    var ran = SecureRandom('Fortuna');
    ran.seed(KeyParameter(
        Uint8List.fromList(List.generate(32, (_) => sGen.nextInt(255)))));
    n = ran.nextBigInteger(bits);
    return n;
  }

  void _generateSecretKey() {
    BigInt pm1 = _p - BigInt.from(1);
    _secretKey = BigInt.zero;
    while((_secretKey >= pm1)||(_secretKey == BigInt.zero)) {
      _secretKey = _gen(_keyLength);
    }
  }

  Uint8List createKeyExchange() {
    BigInt key = _g.modPow(_secretKey, _p);
    return bigIntToUint8List(key);
  }

  Uint8List decryptKeyExchange(Uint8List keyExchange) {
    BigInt key = uint8ListToBigInt(keyExchange);
    BigInt secret = key.modPow(_secretKey, _p);
    final d = SHA256Digest();
    return d.process(bigIntToUint8List(secret));
  }

}


