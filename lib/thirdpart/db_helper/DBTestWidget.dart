import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/model/todoitembean.dart';
import 'package:flutter_xiecheng/thirdpart/db_helper/todo_db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBTestWidget extends StatefulWidget {
  @override
  _DBTestState createState() {
    return _DBTestState();
  }
}

class _DBTestState extends State<DBTestWidget> {
  String _path;
  Database _database;
  @override
  Widget build(BuildContext context) {


    getPath();

    return Scaffold(
      appBar: AppBar(
        title: Text("数据库增删改查"),
      ),
      body: Column(

        children: <Widget>[
         RaisedButton(
            child: Text("增加"),
            onPressed: (){
              var todoDB = TodoDB();
              todoDB.initDB();

            },
          ),
          RaisedButton(
            child: Text("查询"),
            onPressed: (){
              var todoDB = TodoDB();
              todoDB.initDB();
              todoDB.createTable();
             var query = todoDB.query();
             print(query);

            },
          ),
        ],


      ),
    );
  }


  Future getPath() async {
    String path =  await getDatabasesPath();
    _path = join(path.toString(), 'demo.db');
  }


   createDB() async {
    _database = await openDatabase(
      _path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE demo(id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
      },
    );
    _database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO demo(name, value, num) VALUES("some name", 1234, 456.789)');
    });
  }


  add() async{
    _database.transaction((txn) async {
      await txn.rawInsert(
          'INSERT INTO demo(name, value, num) VALUES("some name", 1234, 456.789)');
    });
  }

}
