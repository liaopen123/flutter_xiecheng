import 'package:flutter/material.dart';


class GrowTransition extends StatelessWidget{
  Widget child;
  Animation<double> animation;
  GrowTransition({this.child,this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context,Widget child){
          return new Container(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}