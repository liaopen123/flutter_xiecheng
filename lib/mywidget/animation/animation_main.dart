import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/animation_tour/AnimationBasicUse02.dart';
import 'package:flutter_xiecheng/mywidget/animation/flar/flar01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';

import 'AnimationWidget.dart';
import 'animation_test.dart';
import 'animation_tour/AnimationOpacityWidget.dart';


class AnimationMain extends StatefulWidget{



  _AnimationMain createState() => _AnimationMain();
}


class _AnimationMain extends State<AnimationMain> {


  List<String> items = ["原有动画","AnimatedOpacity和AnimatedContainer","动画基本用法","测试动画","Flar动画"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){

      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AnimationWidget();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AnimationOpacityWidget();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AnimationBaseUse();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AnimationTest();
        }));
        break;
        case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Flar01();
        }));
        break;


    }


  }
}