import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const PI = 3.1415926;
class CountDownView extends StatelessWidget{


  double diam;
  double timeCircleWidth;//时间进度条的宽度
  Color timeCircleColor;//时间进度条的颜色
  Color innerCircleColor;//内部圆的颜色
  Color fontColor;//文字颜色
  double fontSize;//文字大小
  double progress;
  int seconds;


  CountDownView({
    this.diam = 100,
    this.timeCircleWidth = 5,
    this.timeCircleColor = Colors.pink,
    this.innerCircleColor = Colors.black,
    this.fontColor = Colors.white,
    this.fontSize = 20,
    this.progress = 0,
    this.seconds,



  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: Size(diam,diam),painter: CountDownViewPaint(diam,timeCircleWidth,timeCircleColor,innerCircleColor,fontColor,fontSize,progress,seconds),);

  }

}


class  CountDownViewPaint extends CustomPainter{
  double height;//正方形的宽与高
  double width;
  double timeCircleWidth;
  Point centerPoint ;
  double radius;

  Color timeCircleColor;
  Color innerCircleColor;
  Color fontColor;//文字颜色
  double fontSize;//文字大小

  double progress ;
  int seconds;
  CountDownViewPaint(double diam,double timeCircleWidth,Color timeCircleColor,Color innerCircleColor, Color fontColor,double fontSize,double progress,int seconds){
    this.height = diam;
    this.width = diam;
    double radius = diam/2;
    this.timeCircleWidth = timeCircleWidth;
    this.timeCircleColor = timeCircleColor;
    this.innerCircleColor = innerCircleColor;
    this.fontColor = fontColor;
    this.fontSize = fontSize;
this.radius =radius;
this.seconds =seconds;
this.progress =progress;
    centerPoint = Point(radius,radius);

  }

  @override
  void paint(Canvas canvas, Size size) {
    var arcPainter  = new Paint()
      ..strokeCap=StrokeCap.round
      ..strokeWidth=timeCircleWidth
      ..color=timeCircleColor
      ..style=PaintingStyle.stroke;  //  PaintingStyle.stroke  圆环 PaintingStyle.fill 实心圆

//    Rect rect01 = Rect.fromCenter(center:Offset(width/2,height/2),width:this.width,height:this.height);
////    canvas.drawArc(rect01, -PI/2, 2*PI, true, arcPainter);

    var centerR = Offset(centerPoint.x, centerPoint.y);

    Rect rect = Rect.fromCircle(center: centerR, radius: (radius-timeCircleWidth));
    Path path = new Path();
    path.arcTo(rect,-3.14/2, 3.14*2*(progress/100), false);
    canvas.drawPath(path, arcPainter);




    arcPainter..color=innerCircleColor
    ..style=PaintingStyle.fill;
    canvas.drawCircle(centerR, (radius-timeCircleWidth), arcPainter);

    TextSpan span = new TextSpan(style: new TextStyle(color: fontColor,fontSize: fontSize), text: '$seconds秒');
    TextPainter tp = new TextPainter(text: span, textAlign: TextAlign.center,textDirection: TextDirection.ltr);
    tp.layout(maxWidth: this.width,minWidth: this.width,);
    var center1 = Offset(0,centerPoint.y-(tp.height/2));
    tp.paint(canvas, center1);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }


}
