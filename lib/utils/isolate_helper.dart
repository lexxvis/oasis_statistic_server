import 'dart:isolate';
@Deprecated('use new Isolate.run')
Future<T> runTaskInIsolate<T,P> (P inputData, heavyWork) async {
  final p = ReceivePort();
  await Isolate.spawn(heavyWork, [p.sendPort, inputData]);
  return await p.first as T;
}
