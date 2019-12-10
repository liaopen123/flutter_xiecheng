import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/stack/stack_01.dart';

import 'indexed_stack_01.dart';


class StackMain extends StatefulWidget{



  _StackMain createState() => _StackMain();
}


class _StackMain extends State<StackMain> {


  List<String> items = ["stack","InedexedStack"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Stack01();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return InedexedStack01();
        }));
        break;


    }


  }
}