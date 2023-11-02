import 'dart:ffi';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

/// open lazy connection of DB in current directory
/// name of db file is [sqlite3.dll] only if running in Windows OS
/// in Linux ( main hosted  OS ) just open file
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

