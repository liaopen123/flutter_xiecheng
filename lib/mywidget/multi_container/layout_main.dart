import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/box_main.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_main.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/row_main.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/stack/stack_main.dart';

import 'align/align_main.dart';
import 'column_main.dart';
import 'container/container_list_widget.dart';
import 'container/container_main.dart';
import 'gridview_main.dart';
import 'otherwidget/ohters_main.dart';


class LayoutMain extends StatefulWidget{



  _LayoutMain createState() => _LayoutMain();
}


class _LayoutMain extends State<LayoutMain> {


  List<String> items = ["Container","Padding","Align","Box","Row","Column","Stack","GridView","Others"];

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
        case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ColumnMain();
        }));
        break;
        case 6:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return StackMain();
        }));
        break;
   case 7:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return GridViewMain();
        }));
        break;
        case 8:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return OtherMain();
        }));
        break;


    }


  }
}