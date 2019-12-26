import 'package:flutter/material.dart';

//作用类似于imageview的scaleType  布局行为 如果FittedBox外部有约束，即height width，则会按照条件进行布局。如果没有约束(wrap_content)则属性不起作用。
class SizedOverflowBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedOverflowBox01"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: SizedOverflowBox(
              size: Size(400,400),
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 50,
                color: Colors.red,
                child: Text("OverflowBox"),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
