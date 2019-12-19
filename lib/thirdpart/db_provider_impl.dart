

import 'package:flutter_xiecheng/thirdpart/base_db_provider.dart';

class DBProviderImpl extends BaseDBProvider{


  ///表名
  final String name = 'todoInfo';

  final String columnId="id";
  final String columnTitle="title";
  final String columnContent="content";
  final String columnInsertDate="date";




  @override
  String createTableString() {
    return '''
        create table $name (
        $columnId integer primary key,$columnTitle text not null,
        $columnTitle char(500),$columnInsertDate int not null)
      ''';
  }

  @override
  String tableName() {
    return name;
  }



}