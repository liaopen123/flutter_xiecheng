import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/apps/app1/home_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/test/TestWidget.dart';
import 'package:flutter_xiecheng/mywidget/apps/todoapp/todo_home.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/thirdpart/dio/dio_main.dart';
import 'package:flutter_xiecheng/thirdpart/sqfilte/SqFilteABC.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/xiecheng_travel_page.dart';

import 'db_helper/DBTestWidget.dart';

class ThirdPartMain extends StatefulWidget {
  _ThirdPartMain createState() => _ThirdPartMain();
}

class _ThirdPartMain extends State<ThirdPartMain> {
  List<String> items = [
    "dio",
    "瀑布流和tab",
    "官方自带sqfilter",
    "DBTestWidget",
    "App1",
    "TodoApp",
    "Test"
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
          return DioMain();
        }));
        break;
      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return XieChengTravelPage();
        }));
        break;
      case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return DBTestWidget();
        }));
        break;
      case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return SqFilterABC();
        }));
        break;
      case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return HomePage();
        }));
        break;
      case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return TodoHomePage();
        }));
        break;
      case 6:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return TestWidget();
        }));
        break;
    }
  }
}
