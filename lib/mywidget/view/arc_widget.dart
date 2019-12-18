import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
const PI = 3.1415926;
class ArcWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
      CustomPaint(size: Size(300,400),painter: ArcPainter(),),
        ],
      ),
    );
  }

}







class ArcPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint painter = new Paint()
      ..strokeCap=StrokeCap.round
      ..strokeWidth=10
      ..color=Colors.pink
      ..style=PaintingStyle.fill;  //  PaintingStyle.stroke  圆环 PaintingStyle.fill 实心圆

    //五种提供rect的方式
    Rect rect01 = Rect.fromCenter(center:Offset(50,50),width:100,height:100);
    Rect rect02 = Rect.fromCircle(center:Offset(150,50),radius: 50);
    Rect rect03 = Rect.fromLTRB(0, 150, 100, 250);
    Rect rect04 = Rect.fromLTWH(100, 150, 100, 100);
    Rect rect05 = Rect.fromPoints(Offset(0,300), Offset(100,400));
    canvas.drawArc(rect01, 0, PI/2, false, painter);
    canvas.drawArc(rect02, 0, PI, false, painter);
    canvas.drawArc(rect03, 0, PI, false, painter);
    canvas.drawArc(rect04, 0, PI, false, painter);
    canvas.drawArc(rect05, 0, PI, false, painter);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }




}

