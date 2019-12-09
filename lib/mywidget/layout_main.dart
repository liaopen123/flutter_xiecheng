import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/box/box_main.dart';
import 'package:flutter_xiecheng/mywidget/padding/padding_main.dart';
import 'package:flutter_xiecheng/mywidget/row_main.dart';

import 'align/align_main.dart';
import 'container/container_list_widget.dart';
import 'container/container_main.dart';


class LayoutMain extends StatefulWidget{



  _LayoutMain createState() => _LayoutMain();
}


class _LayoutMain extends State<LayoutMain> {


  List<String> items = ["Container","Padding","Align","Box","Row"];

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
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return PaddingMain();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AlignMain();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return BoxMain();
        }));
        break;
        case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return RowMain();
        }));
        break;


    }


  }
}