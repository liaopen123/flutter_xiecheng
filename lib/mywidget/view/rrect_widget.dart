import 'dart:ui';

import 'package:flutter/material.dart';



class RRectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          CustomPaint(
            size: Size(300, 400),
            painter: RectPainter(),
          ),
        ],
      ),
    );
  }
}

class RectPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint painter = new Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10
      ..color = Colors.pink;

    //6种提供rect的方式
    RRect rect01 =
        RRect.fromLTRBAndCorners(0,0,100,100,topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),);
    RRect rect02 = RRect.fromLTRBR(100, 0, 200, 100, Radius.circular(10));
    RRect rect03= RRect.fromLTRBXY(0, 100, 100, 200, 10, 10);
    Rect rect04 = Rect.fromLTWH(100, 150, 100, 100);
    RRect rrect04= RRect.fromRectAndCorners(rect04,topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft: Radius.circular(10),);
    Rect rect05 = Rect.fromPoints(Offset(0, 300), Offset(100, 400));
    RRect rrect05 = RRect.fromRectAndRadius(rect05, Radius.circular(10));
    RRect rRect06 = RRect.fromRectXY(Rect.fromPoints(Offset(200,300), Offset(300,400)), 10, 10);



    //圆角矩形
    canvas.drawRRect(rect01, painter..style=PaintingStyle.fill);
    canvas.drawRRect(rect02, painter..style=PaintingStyle.stroke);
    canvas.drawRRect(rect03, painter..style=PaintingStyle.fill);
    canvas.drawRRect(rrect04, painter..style=PaintingStyle.stroke);
    canvas.drawRRect(rrect05, painter..style=PaintingStyle.fill);
    canvas.drawRRect(rRect06, painter..style=PaintingStyle.fill);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
