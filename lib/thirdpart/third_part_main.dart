import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/box/box_main.dart';
import 'package:flutter_xiecheng/mywidget/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/container/container_main.dart';
import 'package:flutter_xiecheng/mywidget/otherwidget/ohters_main.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_main.dart';
import 'package:flutter_xiecheng/mywidget/row_main.dart';
import 'package:flutter_xiecheng/mywidget/stack/stack_main.dart';
import 'package:flutter_xiecheng/thirdpart/dio/dio_main.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/xiecheng_travel_page.dart';

import 'db_helper/DBTestWidget.dart';



class ThirdPartMain extends StatefulWidget{



  _ThirdPartMain createState() => _ThirdPartMain();
}


class _ThirdPartMain extends State<ThirdPartMain> {


  List<String> items = ["dio","瀑布流和tab","DBTestWidget"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return DioMain();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return XieChengTravelPage();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return DBTestWidget();
        }));
        break;


    }


  }
}