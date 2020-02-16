import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/ScaffoldWidget.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/taskdata.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/taskpage.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';
import 'package:provider/provider.dart';

class TaskOnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tasks = Provider.of<TaskData>(context).tasks;
    var content = "";
    for(var item in tasks){
      content+=item.toString();
    }
    return Scaffold(
      appBar: AppBar(title: Text("common"),),
      body: Container(
    child: Text("$content"),

    ),floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {return TaskPage();}));
    },),);
  }
}
