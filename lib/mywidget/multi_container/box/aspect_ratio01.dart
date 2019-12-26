import 'package:flutter/material.dart';
///修改长款比例的 适用于固定宽高比的场景
class AspectRatio01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted"),),
      body: Container(
        height: 200,
        child: AspectRatio(
          aspectRatio: 2.0,
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ) ,
    );
  }
}