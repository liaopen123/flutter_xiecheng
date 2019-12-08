import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/container/container_01.dart';
import 'package:flutter_xiecheng/mywidget/container/container_03.dart';
import 'package:flutter_xiecheng/mywidget/container/container_04.dart';
import 'package:flutter_xiecheng/mywidget/container/container_button.dart';

import 'container_02.dart';
import 'container_list_widget.dart';

class ContainerMain extends StatefulWidget{



  _ContainerMain createState() => _ContainerMain();
}


class _ContainerMain extends State<ContainerMain> {


  List<String> items = ["Container不包含child","Constrains包含child,未设置宽高","Constrains包含child但设置宽高","包含其他布局","制作button"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Container01();
        }));
        break;
  case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Container02();
        }));
        break;
 case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Container03();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Container04();
        }));
        break;
        case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ContainerButton();
        }));
        break;

    }


  }
}