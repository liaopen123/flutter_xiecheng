import 'package:flutter/material.dart';
///当child不为空的时候，Padding会将布局约束传递给child，根据设置的padding属性，缩小child的布局尺寸。然后Padding将自己调整到child设置了padding属性的尺寸，在child周围创建空白区域。
class Padding02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        child: Padding(
          padding: EdgeInsets.all(40),
          child:
              Text("23333", style: TextStyle(fontSize: 16, color: Colors.pink)),
        ),
      ),
    );
  }
}
