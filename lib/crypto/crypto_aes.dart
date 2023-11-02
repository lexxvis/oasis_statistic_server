import 'dart:math';
import 'dart:typed_data';

import 'package:pointycastle/api.dart';
import 'package:pointycastle/block/aes.dart';
import 'package:pointycastle/block/modes/cbc.dart';
import 'package:pointycastle/padded_block_cipher/padded_block_cipher_impl.dart';
import 'package:pointycastle/paddings/pkcs7.dart';

import '../utils/extensions/extension_as_Uint8List.dart';

/// generate IV every transaction and send in open with encrypted data

class CryptoAES {

  static const int _ivLength = 16;
  static const int _keyLength = 32;

  final CBCBlockCipher cipher;

  var _iv = <int>[];
  var _key = <int>[];

  CryptoAES({ required List<int> key, required List<int> iv }):
        cipher = CBCBlockCipher(AESEngine()) {
    _key = List.generate(_keyLength, (index) => key[index]);
    _iv = List.generate(_ivLength, (index) => iv[index]);
  }

  Future<List<int>> decrypt(List<int> encrypted) async {
    ParametersWithIV<KeyParameter> params =
    ParametersWithIV<KeyParameter>( KeyParameter(_key.asUint8List()), _iv.asUint8List());

    PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null> paddingParams =
    PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null>(params, null);

    PaddedBlockCipherImpl paddingCipher = PaddedBlockCipherImpl(PKCS7Padding(), cipher);
    paddingCipher.init(false, paddingParams);
    var decrypted = paddingCipher.process(encrypted.asUint8List());
    return decrypted;
  }

  Future<Uint8List> encrypt(Uint8List cipherData) async {
    ParametersWithIV<KeyParameter> params =
    ParametersWithIV<KeyParameter>( KeyParameter(_key.asUint8List()), _iv.asUint8List());

    PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null> paddingParams =
    PaddedBlockCipherParameters<ParametersWithIV<KeyParameter>, Null>(params, null);

    PaddedBlockCipherImpl paddingCipher = PaddedBlockCipherImpl(PKCS7Padding(), cipher);
    paddingCipher.init(true, paddingParams);
    return paddingCipher.process( /*utf8.encode(cipherText).asUint8List()*/cipherData);
  }

   set iv(List<int> iv) {
    _iv = List.generate(_ivLength, (index) => iv[index]);
  }

   set key(List<int> key) {
    _key = List.generate(_keyLength, (index) => key[index]);
  }

  List<int> get iv => _iv;

  List<int> setRandomSecretKey() {
   return _internalRandFill(32);
  }

  List<int> setRandomIV() {
   return _internalRandFill(16);
  }

  List<int> _internalRandFill(int length) {
    final Random random = Random.secure();
    return  List<int>.generate(length, (i) => random.nextInt(256));
  }

}