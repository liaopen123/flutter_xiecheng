

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlHlper{
  static const int _VERSION=1;
  static  const String DB_NAME = "todo.db";
  static  const String TABLE_TODO = "todo";
  static Database _database;


  static init() async{
    var databasesPath = await getDatabasesPath();
    //拼接path  databasepath/demo.db
    String path = join(databasesPath, 'demo.db');

    _database =  await openDatabase(path,version: _VERSION,onCreate:(Database db,int version) async{} );
  }

  static isTableExisits(String tableName) async{
    
    await getCurrentDataBase();
     var res = await _database.rawQuery("select * from Sqlite_master where type = 'table' and name = '$tableName'");
     return res!=null&&res.length>0;
    
  }


  static Future<Database> getCurrentDataBase() async{
    
    if (_database == null) {
        await init();
    }
    return _database;
  }

  static close(){
    _database?.close();
    _database=null;
  }


}