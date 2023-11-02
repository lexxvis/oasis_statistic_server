import 'dart:async';
import 'package:grpc/grpc.dart' as grpc;
import '../di/di_container.dart';
import '../utils/logger.dart';
import 'interceptor.dart';

/// server listening port
const serverPort = 4400;

/// interceptor
/// is used to catch session token
final interceptors = [serverInterceptor];

/// base gRPC server service
final workingService = makeWorkingService();

/// configure gRPC server and start
Future<void> startGrpcServer() async {
  final server = grpc.Server.create(
      services: [workingService], interceptors: interceptors);
  await server.serve(port: serverPort);
  logger('Server listening on port ${server.port}...');
}
