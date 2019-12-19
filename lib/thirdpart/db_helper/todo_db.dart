import 'package:flutter_xiecheng/model/todoitembean.dart';
import 'package:flutter_xiecheng/thirdpart/db_helper/DBHelper.dart';
import 'package:flutter_xiecheng/thirdpart/db_helper/todo_opration.dart';
import 'package:sqflite/sqlite_api.dart';

class TodoDB extends DBHelper with ToDoOpration{

  String tableName = "TodoInfo";
  final String columnId="id";
  final String columnTitle="title";
  final String columnContent="content";
  final String columnInsertDate="date";
  final String columnStatus="status";

  @override
  String getTableName() {
    return "TodoInfo";
  }


  @override
  void onCreate(Database database, int version) {
    database.execute( 'CREATE TABLE Test233 (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
  }

  @override
  Future<int> insertTodoItem(TodoItemBean item) async{
    if(database==null){
      database = await getDataBase();
    }

    await database.transaction((txn) async {
      return   await txn.rawInsert(
          'INSERT INTO Test233(name, value, num) VALUES("some name2333", 1234, 456.789)');
    });


  }

  @override
  Future<List<Map>> query() async{
    if(database==null){
      database = await getDataBase();
    }
    return await database.rawQuery('SELECT * FROM Test');
  }

  @override
  Future<List<Map>> createTable() async{
    if(database==null){
      database = await getDataBase();
    }
    return await database.rawQuery( 'CREATE TABLE Test233 (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
  }




}