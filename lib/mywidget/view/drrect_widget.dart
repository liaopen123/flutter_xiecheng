import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DRRectWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("嵌套矩形"),),
      body: CustomPaint(size:Size(300,300),painter: DRRectCustomerPainter(),),
    );
  }


}

class DRRectCustomerPainter  extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint painter = new Paint()..style=PaintingStyle.stroke..strokeWidth=5..color=Colors.green..isAntiAlias=true;
    RRect rect03= RRect.fromLTRBXY(0, 0, 100, 100, 10, 10);
    RRect rect04= RRect.fromLTRBXY(0, 10, 90, 90, 10, 10);
    canvas.drawDRRect(rect03, rect04, painter);


    painter.color= Colors.pink;
    canvas.drawCircle(Offset(50, 50), 50, painter);
    painter.color= Colors.blue;
    var center = Offset(50, 50);
    Rect rect =  new Rect.fromCenter(center:center,width:100,height: 40);
    canvas.drawOval(rect,  painter);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }


}