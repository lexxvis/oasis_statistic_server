//
//  Generated code. Do not modify.
//  source: server_interactions.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resultStatusDescriptor instead')
const ResultStatus$json = {
  '1': 'ResultStatus',
  '2': [
    {'1': 'CODE_UNSPECIFIED', '2': 0},
    {'1': 'OK', '2': 1},
    {'1': 'ERROR', '2': 2},
    {'1': 'TOKEN_NOT_FOUND', '2': 3},
  ],
};

/// Descriptor for `ResultStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resultStatusDescriptor = $convert.base64Decode(
    'CgxSZXN1bHRTdGF0dXMSFAoQQ09ERV9VTlNQRUNJRklFRBAAEgYKAk9LEAESCQoFRVJST1IQAh'
    'ITCg9UT0tFTl9OT1RfRk9VTkQQAw==');

@$core.Deprecated('Use authRequestDescriptor instead')
const AuthRequest$json = {
  '1': 'AuthRequest',
  '2': [
    {'1': 'encrypted_auth_data', '3': 1, '4': 1, '5': 12, '10': 'encryptedAuthData'},
    {'1': 'dh_exchange_key', '3': 2, '4': 1, '5': 12, '10': 'dhExchangeKey'},
  ],
};

/// Descriptor for `AuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authRequestDescriptor = $convert.base64Decode(
    'CgtBdXRoUmVxdWVzdBIuChNlbmNyeXB0ZWRfYXV0aF9kYXRhGAEgASgMUhFlbmNyeXB0ZWRBdX'
    'RoRGF0YRImCg9kaF9leGNoYW5nZV9rZXkYAiABKAxSDWRoRXhjaGFuZ2VLZXk=');

@$core.Deprecated('Use encryptedAuthDataDescriptor instead')
const EncryptedAuthData$json = {
  '1': 'EncryptedAuthData',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    {'1': 'challenge', '3': 2, '4': 1, '5': 12, '10': 'challenge'},
  ],
};

/// Descriptor for `EncryptedAuthData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List encryptedAuthDataDescriptor = $convert.base64Decode(
    'ChFFbmNyeXB0ZWRBdXRoRGF0YRISCgRoYXNoGAEgASgMUgRoYXNoEhwKCWNoYWxsZW5nZRgCIA'
    'EoDFIJY2hhbGxlbmdl');

@$core.Deprecated('Use authReplyDescriptor instead')
const AuthReply$json = {
  '1': 'AuthReply',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.server_interactions.AuthReply.Result', '10': 'result'},
    {'1': 'dh_exchange_key', '3': 2, '4': 1, '5': 12, '10': 'dhExchangeKey'},
    {'1': 'digest', '3': 3, '4': 1, '5': 12, '10': 'digest'},
    {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
  '4': [AuthReply_Result$json],
};

@$core.Deprecated('Use authReplyDescriptor instead')
const AuthReply_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'CODE_UNSPECIFIED', '2': 0},
    {'1': 'OK', '2': 1},
    {'1': 'ERROR', '2': 2},
    {'1': 'ALREADY_EXIST', '2': 3},
  ],
};

/// Descriptor for `AuthReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authReplyDescriptor = $convert.base64Decode(
    'CglBdXRoUmVwbHkSPQoGcmVzdWx0GAEgASgOMiUuc2VydmVyX2ludGVyYWN0aW9ucy5BdXRoUm'
    'VwbHkuUmVzdWx0UgZyZXN1bHQSJgoPZGhfZXhjaGFuZ2Vfa2V5GAIgASgMUg1kaEV4Y2hhbmdl'
    'S2V5EhYKBmRpZ2VzdBgDIAEoDFIGZGlnZXN0EhQKBXRva2VuGAQgASgJUgV0b2tlbiJECgZSZX'
    'N1bHQSFAoQQ09ERV9VTlNQRUNJRklFRBAAEgYKAk9LEAESCQoFRVJST1IQAhIRCg1BTFJFQURZ'
    'X0VYSVNUEAM=');

@$core.Deprecated('Use errorLogItemDescriptor instead')
const ErrorLogItem$json = {
  '1': 'ErrorLogItem',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 12, '10': 'message'},
    {'1': 'digest', '3': 2, '4': 1, '5': 12, '10': 'digest'},
    {'1': 'iv', '3': 3, '4': 1, '5': 12, '10': 'iv'},
  ],
};

/// Descriptor for `ErrorLogItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorLogItemDescriptor = $convert.base64Decode(
    'CgxFcnJvckxvZ0l0ZW0SGAoHbWVzc2FnZRgBIAEoDFIHbWVzc2FnZRIWCgZkaWdlc3QYAiABKA'
    'xSBmRpZ2VzdBIOCgJpdhgDIAEoDFICaXY=');

@$core.Deprecated('Use adsStatisticRequestDescriptor instead')
const AdsStatisticRequest$json = {
  '1': 'AdsStatisticRequest',
  '2': [
    {'1': 'ads_source', '3': 1, '4': 1, '5': 14, '6': '.server_interactions.AdsStatisticRequest.AdsSource', '10': 'adsSource'},
    {'1': 'digest', '3': 2, '4': 1, '5': 12, '10': 'digest'},
  ],
  '4': [AdsStatisticRequest_AdsSource$json],
};

@$core.Deprecated('Use adsStatisticRequestDescriptor instead')
const AdsStatisticRequest_AdsSource$json = {
  '1': 'AdsSource',
  '2': [
    {'1': 'CODE_UNSPECIFIED', '2': 0},
    {'1': 'UNITY_INTERSTITIALS', '2': 1},
    {'1': 'UNITY_REWARDED', '2': 2},
    {'1': 'UNITY_BANNER', '2': 3},
    {'1': 'ADMOB_INTERSTITIALS', '2': 4},
    {'1': 'ADMOB_REWARDED', '2': 5},
    {'1': 'ADMOB_BANNER', '2': 6},
  ],
};

/// Descriptor for `AdsStatisticRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List adsStatisticRequestDescriptor = $convert.base64Decode(
    'ChNBZHNTdGF0aXN0aWNSZXF1ZXN0ElEKCmFkc19zb3VyY2UYASABKA4yMi5zZXJ2ZXJfaW50ZX'
    'JhY3Rpb25zLkFkc1N0YXRpc3RpY1JlcXVlc3QuQWRzU291cmNlUglhZHNTb3VyY2USFgoGZGln'
    'ZXN0GAIgASgMUgZkaWdlc3QinwEKCUFkc1NvdXJjZRIUChBDT0RFX1VOU1BFQ0lGSUVEEAASFw'
    'oTVU5JVFlfSU5URVJTVElUSUFMUxABEhIKDlVOSVRZX1JFV0FSREVEEAISEAoMVU5JVFlfQkFO'
    'TkVSEAMSFwoTQURNT0JfSU5URVJTVElUSUFMUxAEEhIKDkFETU9CX1JFV0FSREVEEAUSEAoMQU'
    'RNT0JfQkFOTkVSEAY=');

@$core.Deprecated('Use statisticsDataRequestDescriptor instead')
const StatisticsDataRequest$json = {
  '1': 'StatisticsDataRequest',
  '2': [
    {'1': 'encrypted_data', '3': 1, '4': 1, '5': 12, '10': 'encryptedData'},
    {'1': 'digest', '3': 2, '4': 1, '5': 12, '10': 'digest'},
    {'1': 'iv', '3': 3, '4': 1, '5': 12, '10': 'iv'},
  ],
};

/// Descriptor for `StatisticsDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticsDataRequestDescriptor = $convert.base64Decode(
    'ChVTdGF0aXN0aWNzRGF0YVJlcXVlc3QSJQoOZW5jcnlwdGVkX2RhdGEYASABKAxSDWVuY3J5cH'
    'RlZERhdGESFgoGZGlnZXN0GAIgASgMUgZkaWdlc3QSDgoCaXYYAyABKAxSAml2');

@$core.Deprecated('Use statisticsDataReplyDescriptor instead')
const StatisticsDataReply$json = {
  '1': 'StatisticsDataReply',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.server_interactions.ResultStatus', '10': 'result'},
    {'1': 'digest', '3': 2, '4': 1, '5': 12, '10': 'digest'},
    {'1': 'iv', '3': 3, '4': 1, '5': 12, '10': 'iv'},
  ],
};

/// Descriptor for `StatisticsDataReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statisticsDataReplyDescriptor = $convert.base64Decode(
    'ChNTdGF0aXN0aWNzRGF0YVJlcGx5EjkKBnJlc3VsdBgBIAEoDjIhLnNlcnZlcl9pbnRlcmFjdG'
    'lvbnMuUmVzdWx0U3RhdHVzUgZyZXN1bHQSFgoGZGlnZXN0GAIgASgMUgZkaWdlc3QSDgoCaXYY'
    'AyABKAxSAml2');

@$core.Deprecated('Use connectionRequestDescriptor instead')
const ConnectionRequest$json = {
  '1': 'ConnectionRequest',
  '2': [
    {'1': 'encrypted_data', '3': 1, '4': 1, '5': 12, '10': 'encryptedData'},
    {'1': 'dh_exchange_key', '3': 2, '4': 1, '5': 12, '10': 'dhExchangeKey'},
  ],
};

/// Descriptor for `ConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionRequestDescriptor = $convert.base64Decode(
    'ChFDb25uZWN0aW9uUmVxdWVzdBIlCg5lbmNyeXB0ZWRfZGF0YRgBIAEoDFINZW5jcnlwdGVkRG'
    'F0YRImCg9kaF9leGNoYW5nZV9rZXkYAiABKAxSDWRoRXhjaGFuZ2VLZXk=');

@$core.Deprecated('Use connectionReplyDescriptor instead')
const ConnectionReply$json = {
  '1': 'ConnectionReply',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.server_interactions.ConnectionReply.Result', '10': 'result'},
    {'1': 'dh_exchange_key', '3': 2, '4': 1, '5': 12, '10': 'dhExchangeKey'},
    {'1': 'digest', '3': 3, '4': 1, '5': 12, '10': 'digest'},
    {'1': 'token', '3': 4, '4': 1, '5': 9, '10': 'token'},
  ],
  '4': [ConnectionReply_Result$json],
};

@$core.Deprecated('Use connectionReplyDescriptor instead')
const ConnectionReply_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'CODE_UNSPECIFIED', '2': 0},
    {'1': 'OK', '2': 1},
    {'1': 'ERROR', '2': 2},
    {'1': 'ALREADY_EXIST', '2': 3},
  ],
};

/// Descriptor for `ConnectionReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectionReplyDescriptor = $convert.base64Decode(
    'Cg9Db25uZWN0aW9uUmVwbHkSQwoGcmVzdWx0GAEgASgOMisuc2VydmVyX2ludGVyYWN0aW9ucy'
    '5Db25uZWN0aW9uUmVwbHkuUmVzdWx0UgZyZXN1bHQSJgoPZGhfZXhjaGFuZ2Vfa2V5GAIgASgM'
    'Ug1kaEV4Y2hhbmdlS2V5EhYKBmRpZ2VzdBgDIAEoDFIGZGlnZXN0EhQKBXRva2VuGAQgASgJUg'
    'V0b2tlbiJECgZSZXN1bHQSFAoQQ09ERV9VTlNQRUNJRklFRBAAEgYKAk9LEAESCQoFRVJST1IQ'
    'AhIRCg1BTFJFQURZX0VYSVNUEAM=');

@$core.Deprecated('Use closeInformationDescriptor instead')
const CloseInformation$json = {
  '1': 'CloseInformation',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 14, '6': '.server_interactions.CloseInformation.Result', '10': 'result'},
    {'1': 'player_id', '3': 2, '4': 1, '5': 9, '10': 'playerId'},
  ],
  '4': [CloseInformation_Result$json],
};

@$core.Deprecated('Use closeInformationDescriptor instead')
const CloseInformation_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'CODE_UNSPECIFIED', '2': 0},
    {'1': 'NORMAL_ACTION', '2': 1},
    {'1': 'ERROR_ACTION', '2': 2},
  ],
};

/// Descriptor for `CloseInformation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeInformationDescriptor = $convert.base64Decode(
    'ChBDbG9zZUluZm9ybWF0aW9uEkQKBnJlc3VsdBgBIAEoDjIsLnNlcnZlcl9pbnRlcmFjdGlvbn'
    'MuQ2xvc2VJbmZvcm1hdGlvbi5SZXN1bHRSBnJlc3VsdBIbCglwbGF5ZXJfaWQYAiABKAlSCHBs'
    'YXllcklkIkMKBlJlc3VsdBIUChBDT0RFX1VOU1BFQ0lGSUVEEAASEQoNTk9STUFMX0FDVElPTh'
    'ABEhAKDEVSUk9SX0FDVElPThAC');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

