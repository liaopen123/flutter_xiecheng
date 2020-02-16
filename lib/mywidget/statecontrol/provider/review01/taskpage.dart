import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/taskbean.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/taskdata.dart';
import 'package:provider/provider.dart';

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: Consumer<TaskData>(builder: (context,taskbean,child){
        return FloatingActionButton(onPressed: (){taskbean.addTask("lph");},
        child: Text("${Provider.of<TaskData>(context).taskCount}"),);
      },),
    );
  }
}
