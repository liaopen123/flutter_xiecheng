import 'package:flutter/material.dart';

//作用类似于imageview的scaleType  布局行为 如果FittedBox外部有约束，即height width，则会按照条件进行布局。如果没有约束(wrap_content)则属性不起作用。
class FittedBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted"),),
      body: Container(
        width: 300,
        height: 300,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text("数据结构与算法"),
        ),
      ) ,
    );
  }
}