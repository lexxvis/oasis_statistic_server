import 'dart:io';
import 'package:basic_utils/basic_utils.dart' as basic_utils;
import 'package:pointycastle/api.dart' as pointycastle;
import 'package:pointycastle/asymmetric/api.dart';
import 'package:pointycastle/asymmetric/pkcs1.dart';
import 'package:pointycastle/asymmetric/rsa.dart';

import '../utils/extensions/extension_as_Uint8List.dart';
import '../utils/logger.dart';


///max encrypted message length is equal of RSA key size - header
/// e.g if key size - 2048bit = 256bytes - 11bytes padding&header data for  PKCS#1 v1.5 padding

class CryptoRSA {
  CryptoRSA._privateConstructor();

  static pointycastle.PrivateKey? _privateKey;

  static final CryptoRSA _cryptoRSA = CryptoRSA._privateConstructor();

  factory CryptoRSA() {
    return _cryptoRSA;
  }

  /// decrypt raw byte data to String
  Future<List<int>> decrypt(List<int> encrypted) async {
    if (_privateKey == null) {
      await _loadPrivateKeyToMemory();
    }
    var cipher = PKCS1Encoding(RSAEngine());
    cipher.init(
        false, pointycastle.PrivateKeyParameter<RSAPrivateKey>(_privateKey!));
    return cipher.process(encrypted.asUint8List());
  }

  Future<void> _loadPrivateKeyToMemory() async {
    try {
      final filePrivateDer =
          File('private_key.der'); // der file with private key
      final bytesPrivateDer = await filePrivateDer.readAsBytes();
      _privateKey =
          basic_utils.CryptoUtils.rsaPrivateKeyFromDERBytes(bytesPrivateDer);
    } catch (e) {
      logger('error loading private key file "private_key.der"');
      logger('$e');
    }
  }
}
