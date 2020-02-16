import 'package:flutter/cupertino.dart';

class TaskBean{
  String name;

  TaskBean({@required this.name});

  @override
  String toString() {
    return 'TaskBean{name: $name}';
  }


}