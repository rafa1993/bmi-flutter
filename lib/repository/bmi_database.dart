import 'package:sqflite/sqflite.dart';
import 'package:meu_imc/model/';
import 'package:path/path.dart' as path;
import 'package:flutter/material.dart';

Map<int, String> scripts = {
  1: ''' CREATE TABLES bmi (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      weight INTEGER,
      height INTEGER, 
  );
'''
};

class BMIDatabase {

  static Database? db;

   Future<Database> getDatabase() async {
    if (db == null) {
      return await bancoDeDados();
    } else {
      return db!;
    }
  }

  Future bancoDeDados() async {
  var db = await openDatabase(
    path.join(await getDatabasePath(), 'database.db'),
    version: 1,
    onCreate: (Database db, int version) async {
      for (var i = 1; i <= scripts.length; i++) {
        await db.execute(scripts[i]!);
        debugPrint(scripts[i]!);
      }
    },
    onUpgrade: (Database db, int oldVersion, int newVersion) async {
        for (var i = oldVersion + 1; i <= scripts.length; i++) {
        await db.execute(scripts[i]!);
        debugPrint(scripts[i]!);
      }
    }
  );
  return db;
}
}