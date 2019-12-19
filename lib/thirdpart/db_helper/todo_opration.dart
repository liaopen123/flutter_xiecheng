

import 'package:flutter_xiecheng/model/todoitembean.dart';

abstract class ToDoOpration{

  Future<int>  insertTodoItem(TodoItemBean item);
  Future<List<Map>> query() ;




}