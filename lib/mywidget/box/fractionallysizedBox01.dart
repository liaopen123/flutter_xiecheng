import 'package:flutter/material.dart';
///
class FractionallySizedBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FractionallySizedBox"),),
      body: Container(
        height: 200,
        width: 200,
        child: FractionallySizedBox(
          widthFactor: 1.5,
          heightFactor: 0.5,
          child: Container(
            width: 10,
            height: 200,
            color: Colors.yellow,
          ),
        ),
      ) ,
    );
  }
}