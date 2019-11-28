import 'package:flutter/material.dart';

///使用AnimatedWidget简化:
class AnimatedWidget02 extends AnimatedWidget{

  AnimatedWidget02({Key key,Animation<double> animation}):super(key:key,listenable:animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double>  animation = listenable;
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      height: animation.value,
      width: animation.value,
      child: new FlutterLogo(),
    );
  }




}