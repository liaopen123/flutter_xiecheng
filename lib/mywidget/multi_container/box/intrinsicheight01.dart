import 'package:flutter/material.dart';
///修改长款比例的 适用于固定宽高比的场景
class IntrinsicHeight01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted"),),
      body: IntrinsicHeight(

        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(color: Colors.blue, width: 100.0),
            new Container(color: Colors.red, width: 50.0,height: 50.0,),
            new Container(color: Colors.yellow, width: 150.0),
          ],
        ),
      ) ,
    );
  }
}