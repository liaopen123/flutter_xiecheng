import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/taskbean.dart';

class TaskData with ChangeNotifier{

  List<TaskBean> _tasks = [
    TaskBean(name: "Buy Milk"),
    TaskBean(name: "Buy Eggos"),
    TaskBean(name: "Buy Bread"),
  ];


  UnmodifiableListView get tasks => UnmodifiableListView(_tasks);
  get taskCount => _tasks.length;

  void addTask(String  name){
    _tasks.add(TaskBean(name: name));
    notifyListeners();
  }


}