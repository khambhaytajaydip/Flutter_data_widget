import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:test_flutter/model/dog.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';

class DatabaseHelper{
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static Database _db;


  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }
  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "dog.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE Dog(id INTEGER PRIMARY KEY, name TEXT, age TEXT)");
  }

  Future<int> saveDog(Dog dog) async {
    var dbClient = await db;
    int res = await dbClient.insert("Dog", dog.toMap());
    return res;
  }


  Future<List<Dog>> getDogs() async {
    var dbClient = await db;
    List<Map> list = await dbClient.rawQuery('SELECT * FROM Dog');
    List<Dog> dogs = new List();
    for (int i = 0; i < list.length; i++) {
      var dog = Dog(list[i]["name"], list[i]["age"]);
      dog.setDogId(list[i]["id"]);
      dogs.add(dog);
    }
    print("TOTAL DOG LENGHT ::  $dogs.length");
    return dogs;
  }



  Future<int> deleteDog(Dog dog) async {
    var dbClient = await db;
    int res =
    await dbClient.rawDelete('DELETE FROM Dog WHERE id = ?', [dog.id]);
    return res;
  }



  Future<bool> update(Dog dog) async {
    var dbClient = await db;
    int res =   await dbClient.update("Dog", dog.toMap(),
        where: "id = ?", whereArgs: <int>[dog.id]);
    return res > 0 ? true : false;
  }

}