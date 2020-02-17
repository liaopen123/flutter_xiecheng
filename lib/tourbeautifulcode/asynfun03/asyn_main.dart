import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/provider_counter_page.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/review01/task_one_page.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream01.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream_main.dart';
import 'package:flutter_xiecheng/tourbeautifulcode/asynfun03/future_main.dart';

import 'futurebuilder_main.dart';



class AsynMain extends StatefulWidget{



  _AsynMain createState() => _AsynMain();
}


class _AsynMain extends State<AsynMain> {


  List<String> items = [    "掌握异步方法Futur","掌握异步方法FutureBuilder",];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
              return FutureMain();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FutureBuilderMain();
        }));
        break;


    }


  }
}