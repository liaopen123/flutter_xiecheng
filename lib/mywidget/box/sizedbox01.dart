import 'package:flutter/material.dart';

class SizedBox01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SizedBox"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 10,
            height: 10,
            child: SizedBox(
              width: 50,
              height: 50,
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text("SizedBox"),
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
