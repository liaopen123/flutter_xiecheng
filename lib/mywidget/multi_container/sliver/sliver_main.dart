import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/sliver/sliver_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/stack/stack_01.dart';



class SliverMain extends StatefulWidget{



  _SliverMain createState() => _SliverMain();
}


class _SliverMain extends State<SliverMain> {


  List<String> items = ["stack","InedexedStack"];

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

        break;


    }


  }
}