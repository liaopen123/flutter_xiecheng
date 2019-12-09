import 'package:flutter/material.dart';
class ConstrainedBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fitted"),),
      body: Container(
        child: new ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100.0,
            minHeight: 100.0,
            maxWidth: 150.0,
            maxHeight: 150.0,
          ),
          child: new Container(
            width: 200.0,
            height: 200.0,
            color: Colors.red,
          ),
        ),
      ) ,
    );
  }
}