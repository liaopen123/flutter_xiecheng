import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/microtask_future/microtask_future.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';

import 'futurebuilderwidget.dart';
import 'futureweight.dart';


class ThreadMain extends StatefulWidget{



  _ThreadMain createState() => _ThreadMain();
}


class _ThreadMain extends State<ThreadMain> {


  List<String> items = ["future异步编程","FutureBuilder网络请求刷新UI","MicroTask和Future全解析"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FutureWidget();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FutureBuilderWidget();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return MicroTaskFuturePage();
        }));
        break;


    }


  }
}