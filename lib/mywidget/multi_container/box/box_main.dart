import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/intrinsicheight01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/limitedbox01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/sizedbox01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/sizedoverflowbox.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/box/transform01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';

import 'aspect_ratio01.dart';
import 'baseline01.dart';
import 'constrainedbox01.dart';
import 'fittedbox01.dart';
import 'fractionallysizedBox01.dart';
import 'offstage01.dart';
import 'overflowbox.dart';


class BoxMain extends StatefulWidget{



  _BoxMain createState() => _BoxMain();
}


class _BoxMain extends State<BoxMain> {


  List<String> items = ["FittedBox","AspectRatio","ConstrainedBox","FractionallySizedBox","Baseline","IntrinsicHeight","LimitedBox","OffStage","OverflowBox","SizedBox","SizedOverflowBox01","Transform01"];

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(items: items,itemClick:itemClick,);
  }




  void itemClick(int index){
    switch(index){
      case 0:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FittedBox01();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AspectRatio01();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ConstrainedBox01();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FractionallySizedBox01();
        }));
        break;
      case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Baseline01();
        }));
        break;
        case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return IntrinsicHeight01();
        }));
        break;
        case 6:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return LimitedBox01();
        }));
        break;
        case 7:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return OffStage01();
        }));
        break;
        case 8:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return OverflowBox01();
        }));
        break;
        case 9:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SizedBox01();
        }));
        break;
        case 10:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SizedOverflowBox01();
        }));
        break;
        case 11:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return Transform01();
        }));
        break;
    }


  }
}