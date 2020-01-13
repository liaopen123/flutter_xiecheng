import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/fun_widget/dialog/dialog_main.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_main.dart';


class WidgetMain extends StatefulWidget{



  _WidgetMain createState() => _WidgetMain();
}


class _WidgetMain extends State<WidgetMain> {


  List<String> items = ["Sliver","Dialog"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SliverMain();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return DialogMain();
        }));
        break;


    }


  }
}