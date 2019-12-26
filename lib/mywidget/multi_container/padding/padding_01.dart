import 'package:flutter/material.dart';
//当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；
class Padding01 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.yellow,
        child: Padding(padding: EdgeInsets.all(40)),
      ),
    );
  }

}