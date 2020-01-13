import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_03.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_04.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_05.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_06.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/stack/stack_01.dart';



class SliverMain extends StatefulWidget{



  _SliverMain createState() => _SliverMain();
}


class _SliverMain extends State<SliverMain> {


  List<String> items = ["SliverList和SliverGrid用法","SliverAppBar用法","SliverPersistentHeader","SliverFillRemaining","SliverFillViewport","滑动导航栏效果"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Sliver01();
        }));
        break;
        case 1:
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return Sliver02();
          }));
        break;
        case 2:
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return Sliver03();
          }));
        break;
        case 3:
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return Sliver04();
          }));
        break;
        case 4:
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return Sliver05();
          }));
        break;
        case 5:
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return Sliver06();
          }));
        break;


    }


  }
}