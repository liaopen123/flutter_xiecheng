import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/view/custom_paint_01.dart';
//当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；
class AllView01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.yellow,
        child:CustomPaint01(),
      ),
    );
  }

}