import 'package:flutter/material.dart';
class Align02 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Align(
          alignment: FractionalOffset.bottomCenter,
            child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100/2),
            color: Colors.yellow,
          ),
          child: Center(
            child:Icon(Icons.keyboard_voice),
          ),
      ),
        ),
      );
  }

}