import 'package:flutter/material.dart';

//作用类似于imageview的scaleType  布局行为 如果FittedBox外部有约束，即height width，则会按照条件进行布局。如果没有约束(wrap_content)则属性不起作用。
class LimitedBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LimitedBox"),),
      body: Column(
        children: <Widget>[

          Container(
            child: LimitedBox(
              maxWidth: 50,
              child: Container(
                alignment: Alignment.center,
                width: 100,height: 100,color: Colors.red,
              child: Text("不起作用"),),
            ),
          ) ,


          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ) ,


        ],
      ),
    );
  }
}