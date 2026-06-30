import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:untitled/task_with_db/MODELS/task_models.dart';

class TaskDatabase {
  static Database? _db;

  static Future<Database> getDB() async {
    if (_db != null) return _db!;

    _db = await openDatabase(
      path.join(await getDatabasesPath(), 'task.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE task(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER)',
        );
      },
      version: 2,
    );
    return _db!;
  }

  static Future<void> insertTask(TaskModels taskModel) async {
    final db = await getDB();
    await db.insert(
      'task',
      taskModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }



  static Future<List<TaskModels>> getTask() async {
    final db = await getDB();
    final List<Map<String, dynamic>> maps = await db.query('task');
    return List.generate(maps.length, (i)=> TaskModels.formMap(maps[i]));
  }
}
