import 'dart:ui';

import 'package:flutter/material.dart';



class RectWidget extends StatelessWidget {
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

    //五种提供rect的方式
    Rect rect01 =
        Rect.fromCenter(center: Offset(50, 50), width: 100, height: 100);
    Rect rect02 = Rect.fromCircle(center: Offset(150, 50), radius: 50);
    Rect rect03 = Rect.fromLTRB(0, 150, 100, 250);
    Rect rect04 = Rect.fromLTWH(100, 150, 100, 100);
    Rect rect05 = Rect.fromPoints(Offset(0, 300), Offset(100, 400));



    //圆角矩形
    canvas.drawRect(rect01, painter..style=PaintingStyle.fill);
    canvas.drawRect(rect02, painter..style=PaintingStyle.stroke);
    canvas.drawRect(rect03, painter..style=PaintingStyle.fill);
    canvas.drawRect(rect04, painter..style=PaintingStyle.stroke);
    canvas.drawRect(rect05, painter..style=PaintingStyle.fill);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
