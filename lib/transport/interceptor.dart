import 'dart:async';
import 'package:grpc/grpc.dart';

/// intercept client calls and extract token
/// from client meta data with key = [token]
/// if token not found throw exception
FutureOr<GrpcError?> serverInterceptor(ServiceCall call, ServiceMethod method) {

  final metadata = call.clientMetadata ?? {};
  final idToken = metadata['token'];

  if (idToken == null) {
    return GrpcError.unauthenticated('Missing Auth Token');
  }

  return null;
}
