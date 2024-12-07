import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';

class DBhelper {
  final String noteTable = 'note';
  final String columnId = 'note_id';
  final String columnTitle = 'note_title';
  final String columnDiscr = 'note_discr';

  Future<Database> openDB() async {
    // Get application documents directory
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}/note_db.db';

    // Open or create database
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
          '''
          CREATE TABLE $noteTable (
            $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
            $columnTitle TEXT NOT NULL,
            $columnDiscr TEXT NOT NULL
          )
          ''',
        );
      },
    );
  }

  Future<void> addData(String title, String discr) async {
    try {
      final db = await openDB();
      await db.insert(
        noteTable,
        {
          columnTitle: title,
          columnDiscr: discr,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
      print("Data added successfully: Title=$title, Discr=$discr");
    } catch (e) {
      print("Error inserting data: $e");
    }
  }
}
