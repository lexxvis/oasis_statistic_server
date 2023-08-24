import 'dart:async';
import 'package:grpc/grpc.dart' as grpc;
import '../di/di_container.dart';
import '../utils/logger.dart';
import 'interceptor.dart';

const serverPort = 4400;

final interceptors = [serverInterceptor];

final workingService = makeWorkingService();

Future<void> startGrpcServer() async {
  final server = grpc.Server.create(
      services: [workingService], interceptors: interceptors);
  await server.serve(port: serverPort);
  logger('Server listening on port ${server.port}...');
}
