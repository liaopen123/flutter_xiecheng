import 'package:flutter_xiecheng/thirdpart/sql_helper.dart';
import 'package:sqflite/sqflite.dart';
import 'package:meta/meta.dart';

abstract class BaseDBProvider {
  bool isTableExists = false;

  String createTableString();

  String tableName();

  tableBaseString(String sql) {
    return sql;
  }

  Future<Database> getDataBase() async {
    return await open();
  }

  //判断table是否存在 不存在就创建一个表
  prepare(String tableName, String createSql) async {
    isTableExists = await SqlHlper.isTableExisits(tableName);
    if (!isTableExists) {
      Database database = await SqlHlper.getCurrentDataBase();
      return await database.execute(createSql);
    }
  }

  open()async{
    if (!isTableExists) {
      await prepare(tableName(), createTableString());
    }

    return await SqlHlper.getCurrentDataBase();
  }
}
