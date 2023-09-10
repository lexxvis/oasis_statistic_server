import 'dart:ffi';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

LazyDatabase openConnection() {
  if (Platform.isWindows) _openSqliteLibrary('\\sqlite3.dll');
  return LazyDatabase(() async {
    final file = File('db.sqlite');
    return NativeDatabase.createInBackground(file, logStatements: false);
  });
}

DynamicLibrary _openSqliteLibrary(String path) {
  //sudo apt upgrade
  //sudo apt install sqlite3
  final scriptDir = File(Platform.script.toFilePath()).parent;
  final libraryNextToScript = File('${scriptDir.path}$path');
  return DynamicLibrary.open(libraryNextToScript.path);
}

