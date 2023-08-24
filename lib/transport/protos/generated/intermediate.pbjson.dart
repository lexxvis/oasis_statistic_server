//
//  Generated code. Do not modify.
//  source: intermediate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use connectionRequestDataDescriptor instead')
const ConnectionRequestData$json = {
  '1': 'ConnectionRequestData',
  '2': [
    {'1': 'player_id', '3': 1, '4': 1, '5': 9, '10': 'playerId'},
    {'1': 'country_code', '3': 2, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

/// Descriptor for `ConnectionRequestData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionRequestDataDescriptor = $convert.base64Decode(
    'ChVDb25uZWN0aW9uUmVxdWVzdERhdGESGwoJcGxheWVyX2lkGAEgASgJUghwbGF5ZXJJZBIhCg'
    'xjb3VudHJ5X2NvZGUYAiABKAlSC2NvdW50cnlDb2Rl');

@$core.Deprecated('Use gameStatisticDataDescriptor instead')
const GameStatisticData$json = {
  '1': 'GameStatisticData',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 5, '10': 'balance'},
    {'1': 'goldBalance', '3': 2, '4': 1, '5': 5, '10': 'goldBalance'},
    {'1': 'bet', '3': 3, '4': 1, '5': 5, '10': 'bet'},
    {'1': 'win', '3': 4, '4': 1, '5': 5, '10': 'win'},
    {'1': 'ante', '3': 5, '4': 1, '5': 5, '10': 'ante'},
    {'1': 'level', '3': 6, '4': 1, '5': 5, '10': 'level'},
    {'1': 'gameResult', '3': 7, '4': 1, '5': 5, '10': 'gameResult'},
    {'1': 'dealerHand', '3': 9, '4': 3, '5': 11, '6': '.intermediate.GameStatisticData.CardDescription', '10': 'dealerHand'},
    {'1': 'playerHand', '3': 10, '4': 3, '5': 11, '6': '.intermediate.GameStatisticData.CardDescription', '10': 'playerHand'},
    {'1': 'playerUnchangedHand', '3': 11, '4': 3, '5': 11, '6': '.intermediate.GameStatisticData.CardDescription', '10': 'playerUnchangedHand'},
  ],
  '3': [GameStatisticData_CardDescription$json],
};

@$core.Deprecated('Use gameStatisticDataDescriptor instead')
const GameStatisticData_CardDescription$json = {
  '1': 'CardDescription',
  '2': [
    {'1': 'suit', '3': 1, '4': 1, '5': 5, '10': 'suit'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `GameStatisticData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gameStatisticDataDescriptor = $convert.base64Decode(
    'ChFHYW1lU3RhdGlzdGljRGF0YRIYCgdiYWxhbmNlGAEgASgFUgdiYWxhbmNlEiAKC2dvbGRCYW'
    'xhbmNlGAIgASgFUgtnb2xkQmFsYW5jZRIQCgNiZXQYAyABKAVSA2JldBIQCgN3aW4YBCABKAVS'
    'A3dpbhISCgRhbnRlGAUgASgFUgRhbnRlEhQKBWxldmVsGAYgASgFUgVsZXZlbBIeCgpnYW1lUm'
    'VzdWx0GAcgASgFUgpnYW1lUmVzdWx0Ek8KCmRlYWxlckhhbmQYCSADKAsyLy5pbnRlcm1lZGlh'
    'dGUuR2FtZVN0YXRpc3RpY0RhdGEuQ2FyZERlc2NyaXB0aW9uUgpkZWFsZXJIYW5kEk8KCnBsYX'
    'llckhhbmQYCiADKAsyLy5pbnRlcm1lZGlhdGUuR2FtZVN0YXRpc3RpY0RhdGEuQ2FyZERlc2Ny'
    'aXB0aW9uUgpwbGF5ZXJIYW5kEmEKE3BsYXllclVuY2hhbmdlZEhhbmQYCyADKAsyLy5pbnRlcm'
    '1lZGlhdGUuR2FtZVN0YXRpc3RpY0RhdGEuQ2FyZERlc2NyaXB0aW9uUhNwbGF5ZXJVbmNoYW5n'
    'ZWRIYW5kGjsKD0NhcmREZXNjcmlwdGlvbhISCgRzdWl0GAEgASgFUgRzdWl0EhQKBXZhbHVlGA'
    'IgASgFUgV2YWx1ZQ==');

