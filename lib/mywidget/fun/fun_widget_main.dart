import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/fun/Inherited_widget/test_inherited.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_02.dart';

import 'navigator_back_intercepter_widget.dart';


class FunWidgetMain extends StatefulWidget{



  _FunWidgetMain createState() => _FunWidgetMain();
}


class _FunWidgetMain extends State<FunWidgetMain> {


  List<String> items = ["导航返回拦截","数据共享shareInherited","跨组件状态共享（Provider）"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return NavigatorBackIntercepterWidget();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return TestInheritedWidget();
        }));
        break;


    }


  }
}