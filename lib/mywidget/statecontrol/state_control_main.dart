import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_02.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/provider_counter_page.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream01.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/stream/stream_main.dart';

import 'Inherited_widget/test_inherited.dart';


class SCMain extends StatefulWidget{



  _SCMain createState() => _SCMain();
}


class _SCMain extends State<SCMain> {


  List<String> items = ["InheritedWidget","Stream","Provider"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
              return TestInheritedWidget();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return StreamMain()  ;
        }));
        break;
   case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ProviderCounterPage()  ;
        }));
        break;


    }


  }
}