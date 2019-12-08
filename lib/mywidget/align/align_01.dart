import 'package:flutter/material.dart';
class Align01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

}