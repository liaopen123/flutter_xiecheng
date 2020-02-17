import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/apps/app1/home_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/splashpage.dart';
import 'package:flutter_xiecheng/mywidget/apps/test/TestWidget.dart';
import 'package:flutter_xiecheng/mywidget/apps/todoapp/todo_home.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/thirdpart/dio/dio_main.dart';
import 'package:flutter_xiecheng/thirdpart/sqfilte/SqFilteABC.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/xiecheng_travel_page.dart';

import 'asynfun03/asyn_main.dart';


class FlutterTourMain extends StatefulWidget {
  _FlutterTourMain createState() => _FlutterTourMain();
}

class _FlutterTourMain extends State<FlutterTourMain> {
  List<String> items = [
    "掌握异步方法Future",


  ];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(
      items: items,
      itemClick: itemClick,
    );
  }

  void itemClick(int index) {
    switch (index) {
      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return AsynMain();
        }));
        break;

    }
  }
}
