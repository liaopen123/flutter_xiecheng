import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
class PointLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
      CustomPaint(size: Size(300,400),painter: PointLinePainter(),),
          CustomPaint(size: Size(300,400),painter:LinePainter()),
        ],
      ),
    );
  }

}







class PointLinePainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    List<Offset> points01 = new List();
    List<Offset> points02 = new List();
    List<Offset> points03 = new List();
    for(int i=0;i<5;i++){
      points01.add( new Offset(30, i*100.0));
      points02.add( new Offset(60, i*100.0));
      points03.add( new Offset(90, i*100.0));
    }
Paint paint = Paint()
  ..style=PaintingStyle.fill
  ..color=Colors.blue
  ..isAntiAlias=true
  ..strokeWidth=10
  ..strokeCap=StrokeCap.square;

    canvas.drawPoints(PointMode.points, points01, paint);
    canvas.drawPoints(PointMode.lines, points02, paint);
    canvas.drawPoints(PointMode.polygon, points03, paint);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }




}

class   LinePainter extends  CustomPainter{

  Paint painter = new Paint()..strokeWidth=10..isAntiAlias=true..color=Colors.blue..style=PaintingStyle.fill;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0, 0), Offset(100,100), painter..strokeCap=StrokeCap.round);
    canvas.drawLine(Offset(100, 0), Offset(0,100), painter..strokeCap=StrokeCap.square);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}