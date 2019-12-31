import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  String _dbName  ="todo.db";
  int _dbVersion = 1;
  String tableName  ="todo_table";

  String _result = "";
  TextEditingController _nameController=new TextEditingController();
  TextEditingController _ageController=new TextEditingController();

  @override
  void initState() {
    super.initState();

    _createDb();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text("数据库增删改查"),
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hintText: "请输入名字",),
              controller: _nameController,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: _ageController,
              decoration: InputDecoration(hintText: "请输入age",),
            ),
          ),

         RaisedButton(
            child: Text("增"),
            onPressed: (){
              String sql = "INSERT INTO $tableName(name,age) VALUES('${_nameController.text}','${_ageController.text}')";

              _insertItem(sql);
            },
          ),
          RaisedButton(
            child: Text("删"),
            onPressed: (){
              String sql = "DELETE FROM $tableName WHERE name = '${_nameController.text}'";

              _delete(sql);
            },
          ),
          RaisedButton(
            child: Text("删所有"),
            onPressed: (){
              String sql = "DELETE FROM $tableName";

              _deleteAll(sql);
            },
          ),

          RaisedButton(
            child: Text("改"),
            onPressed: (){
              String sql = "UPDATE $tableName SET name = ? WHERE name = ?";

              _update(sql,["廖鹏辉修改后",_nameController.text]);
            },
          ),
          RaisedButton(
            child: Text("查询"),
            onPressed: (){
              String sql = 'SELECT * FROM $tableName';
              _queryAll(sql);
            },
          ),

          Container(
            margin: EdgeInsets.all(10),
            constraints: BoxConstraints(
              minWidth: double.infinity,
              minHeight: 40,
            ),

            child: Text(_result),
          ),
        ],

      ),
    );
  }



  void _createDb() async{
    var databasePath = await getDatabasesPath();
    var _fullPath = join(databasePath,_dbName);
    await openDatabase(_fullPath,

      version: _dbVersion,
      onCreate: (Database db, int vers) async{
        //onCreate 只在创建数据库的时候调用一次,
        String _createDBSql = "CREATE TABLE $tableName (id INTEGER PRIMARY KEY, name TEXT,age INTEGER)";
        await db.execute(_createDBSql);
        await db.close();
      },
    );
  }


  void _insertItem(String sql) async{
    int count= 0;
    var path = await getDatabasesPath();
    var fullDBPath = join(path,_dbName);

    var db = await openDatabase(fullDBPath);
    await db.transaction((txn) async{
       count = await txn.rawInsert(sql);
    });

    await db.close();

    setState(() {
      if (count>0) {
        _result= "数据插入成功";

      }else{
        _result= "数据插入失败";
      }

    });

  }

  _delete(String sql) async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _dbName);

    Database db = await openDatabase(path);
    int count = await db.rawDelete(sql);
    await db.close();

    if (count > 0) {
      setState(() {
        _result = "执行删除操作完成，该sql删除条件下的数目为：$count";
      });
    } else {
      setState(() {
        _result = "无法执行删除操作，该sql删除条件下的数目为：$count";
      });
    }
  }

  _deleteAll(String sql) async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _dbName);

    Database db = await openDatabase(path);
    int count = await db.rawDelete(sql);
    await db.close();

    if (count > 0) {
      setState(() {
        _result = "执行删除操作完成，该sql删除条件下的数目为：$count";
      });
    } else {
      setState(() {
        _result = "无法执行删除操作，该sql删除条件下的数目为：$count";
      });
    }
  }

  _update(String sql,List args) async{

    var _path = await getDatabasesPath();
    var _fullPath = join(_path,_dbName);
    var db = await openDatabase(_fullPath);
    var count = await db.rawUpdate(sql,args);
    await db.close();
    if (count > 0) {
      setState(() {
        _result = "更新数据库操作完成，该sql删除条件下的数目为：$count";
      });
    } else {
      setState(() {
        _result = "无法更新数据库，该sql删除条件下的数目为：$count";
      });
    }

  }



  void _queryAll(String sql) async{
    var _path = await getDatabasesPath();
    var _fullName = join(_path,_dbName);
    var db =  await openDatabase(_fullName);
    List<Map> list = await db.rawQuery(sql);
    await db.close();
    setState(() {
      _result = "查询结果:$list";
    });


  }

}
