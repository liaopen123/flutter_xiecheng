


import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

abstract class DBHelper{

  static const int _DBVERSION = 1;
  static const String DB_NAME = "todo.db";
  Database database;

  String getTableName();

  void onCreate(Database database,int version);

initDB() async{
   database = await getDataBase();
  }



  Future<Database> getDataBase() async{
    var dbPath = await getDatabasesPath();
    var path = join(dbPath,DB_NAME);
return await openDatabase(path,version: _DBVERSION,onCreate: onCreate);
  }





}