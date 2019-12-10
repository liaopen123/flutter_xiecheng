import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/box/box_main.dart';
import 'package:flutter_xiecheng/mywidget/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/container/container_main.dart';
import 'package:flutter_xiecheng/mywidget/otherwidget/ohters_main.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_main.dart';
import 'package:flutter_xiecheng/mywidget/row_main.dart';
import 'package:flutter_xiecheng/mywidget/stack/stack_main.dart';



class LayoutMain extends StatefulWidget{



  _LayoutMain createState() => _LayoutMain();
}


class _LayoutMain extends State<LayoutMain> {


  List<String> items = ["dio",];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ContainerMain();
        }));
        break;


    }


  }
}