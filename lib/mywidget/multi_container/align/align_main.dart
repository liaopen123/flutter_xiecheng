import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';


class AlignMain extends StatefulWidget{



  _AlignMain createState() => _AlignMain();
}


class _AlignMain extends State<AlignMain> {


  List<String> items = ["align没有尺寸因子","align有尺寸因子"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Align01();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Align02();
        }));
        break;


    }


  }
}