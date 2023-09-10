/* oasis poker server application command line
*  started 15.09.2022 dart 2.18.1
*  @lexxvis
*  dart --snapshot=oasis_server.dart.snapshot oasis_server.dart
*  dart compile kernel oasis_server.dart
*  for run from intelliJ check objectbox.dll and objectbox.lib is int the dart-sdk\bin directory
*  use objectbox.g.dart as relative import
*  dart run build_runner build
*  compile under Linux
*   sudo apt-get install dart      /// to update dart version
*  create oasis_server dir
*  copy /bin and /lib
*  run bash <(curl -s https://raw.githubusercontent.com/objectbox/objectbox-dart/main/install.sh)
*  to obtain libobjectbox.so
*  copy libobjectbox.so and pubspec.yaml to /bin directory
*  run dart pub get
*  compile: dart compile exe oasis_server.dart
*  execute ./oasis_server.exe
*/

import '../lib/utils/logger.dart';

import '../lib/transport/server.dart';

import 'dart:async';

void main() =>
    runZonedGuarded(() async => await startGrpcServer(), (error, stack) {
      logger('catch error  runZoneGuarded :  $error');
    });
