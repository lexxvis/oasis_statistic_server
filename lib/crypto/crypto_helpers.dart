import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';
import 'dart:convert';

import 'package:pointycastle/digests/md5.dart';

import '../utils/extensions/extension_as_Uint8List.dart';


/// hash generator not uses in server
String generateHash1({required String userId, required String password})  {
  return _internalGenerator(chunk1 : userId, chunk2 : password);
}

String _internalGenerator({required String chunk1, required String chunk2, List<int>? chunk3}) {

  List<List<int>> bytesChunks = [ utf8.encode(chunk1), utf8.encode(chunk2) ];

  var output = AccumulatorSink<Digest>();

  if (chunk3 != null) {
    bytesChunks.add(chunk3);
  }

  ByteConversionSink input = sha512.startChunkedConversion(output);
  for (var bytes in bytesChunks) { input.add(bytes); }
  input.close();
  Digest result = output.events.single;
  return result.toString();
}

/// convert String to raw byte data
Uint8List createUint8ListFromString(String s) {
  var codec = Utf8Codec(allowMalformed: true);
  return Uint8List.fromList(codec.encode(s));
}

/// convert raw byte data to String
String createStringFromUint8List(Uint8List bytes) {
  var codec = Utf8Codec(allowMalformed: true);
  //String.fromCharCodes(decodedBytes);
  return codec.decode(bytes);
}

BigInt uint8ListToBigInt(Uint8List array) {
  BigInt value = BigInt.zero;
  for(int i = 0; i < array.length; i++) {
    value <<= 8;
    value |= BigInt.from(array[i]);
  }
  return value;
}


Uint8List bigIntToUint8List(BigInt value) {
  final data = ByteData((value.bitLength / 8).ceil());
  var bigIntValue = value;

  for (var i = 1; i <= data.lengthInBytes; i++) {
    data.setUint8(data.lengthInBytes - i, bigIntValue.toUnsigned(8).toInt());
    bigIntValue = bigIntValue >> 8;
  }
  return data.buffer.asUint8List();
}


String generateToken(String seed) {
  const List alphanumeric = ['A','B','C','D','E','F','G','H','I','J','K','L',
                             'M','N','O','P','Q','R','S','T','U','V','W','X',
                             'Y','Z','a','b','c','d','e','f','g','h','i','j',
                             'k','l','m','n','o','p','q','r','s','t','u','v',
                             'w','z','y','z','0','1','2','3','4','5','6','7','8','9'];
  const int length = 32;
  var rng = Random();
  String salt = '';

  for (int idx = 0; idx < length; ++idx) {
    salt += alphanumeric[rng.nextInt(alphanumeric.length)];
  }

  List<List<int>> bytesChunks = [ utf8.encode(seed), utf8.encode(salt) ];
  var output = AccumulatorSink<Digest>();
  ByteConversionSink input = sha256.startChunkedConversion(output);
  for (var bytes in bytesChunks) { input.add(bytes); }
  input.close();
  Digest result = output.events.single;
  return result.toString();
}

List<int> generateCheckSum(List<int> input) {
  final md5 = MD5Digest();
  Uint8List r = input.asUint8List();
  return md5.process(r);
}