import 'dart:async';
import 'package:grpc/grpc.dart';

FutureOr<GrpcError?> serverInterceptor(ServiceCall call, ServiceMethod method) {

  final metadata = call.clientMetadata ?? {};
  final idToken = metadata['token'];

  if (idToken == null) {
    return GrpcError.unauthenticated('Missing Auth Token');
  }

  return null;
}
