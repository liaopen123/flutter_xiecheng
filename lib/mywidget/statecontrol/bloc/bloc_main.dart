import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream01.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream02stream_broadcast.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/streambuilderwidget.dart';


class StreamMain extends StatefulWidget{



  _StreamMain createState() => _StreamMain();
}


class _StreamMain extends State<StreamMain> {


  List<String> items = ["Stream单订阅","Stream广播订阅","StreamBuilder Widget"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Stream01Page();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Stream02StreamBroadcast();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return StreamBuilderWidgetPage();
        }));
        break;


    }


  }
}