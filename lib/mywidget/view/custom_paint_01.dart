import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；
class CustomPaint01 extends StatelessWidget{

  Paint painter = new  Paint()..isAntiAlias=true..style=PaintingStyle.fill..color=Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.yellow,
        width: 300,
        height: 300,
        child: CustomPaint(size: Size(300,300),
        painter: LPHPainter(),),
      ),
    );
  }

}

class LPHPainter extends CustomPainter{
  Paint painter = new Paint()..isAntiAlias=false..color=Colors.red..style=PaintingStyle.fill;
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(Colors.red, BlendMode.srcIn);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}