import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/view/pointer_line_widget.dart';
import 'package:flutter_xiecheng/mywidget/view/rect_widget.dart';
import 'package:flutter_xiecheng/mywidget/view/rrect_widget.dart';

import 'all_view_01.dart';
import 'arc_widget.dart';
import 'drrect_widget.dart';


class ViewMain extends StatefulWidget{



  _ViewMain createState() => _ViewMain();
}


class _ViewMain extends State<ViewMain> {


  List<String> items = ["五子棋","PointLine","画圆/弧度","矩形","圆角矩形","嵌套矩形(Double RRect),圆 ,椭圆"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AllView01();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return PointLine();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ArcWidget();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return RectWidget();
        }));
        break;
        case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return RRectWidget();
        }));
        break;
        case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return DRRectWidget();
        }));
        break;


    }


  }
}