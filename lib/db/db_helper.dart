import 'package:flutter_todo_app/models/task.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database? _db;
  static final int _version = 1;
  static final String _tableName = "tasks";

  static Future<void> initDb() async {
    if (_db != null) {
      return;
    }
    try {
      String _path = await getDatabasesPath() + 'tasks_db';
      _db =
          await openDatabase(_path, version: _version, onCreate: (db, version) {
        print("Creating a new one");
        return db.execute(
          "CREATE TABLE $_tableName("
          "id INTEGER PRIMARY KEY AUTOINCREMENT , "
          "title String, note TEXT, date STRING, "
          "starTime STRING, nedTime STRING, "
          "remind INTEGER, repeat STRING, "
          "color  INTEGER, "
          "isCompleted  INTEGER)",
        );
      });
    } catch (e) {
      print('the error was $e');
    }
  }

  static Future<int> insert(Task? task) async {
    print("Insert function called");
    return await _db?.insert(_tableName, task!.toJson()) ?? 1;
  }
}
