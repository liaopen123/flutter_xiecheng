import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/animationwidget02/AnimatedWidget02.dart';


class AnimationWidget02 extends StatefulWidget{

  _AnimationWidget02 createState() => new _AnimationWidget02();
}


class _AnimationWidget02 extends State<AnimationWidget02> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = new Tween(begin: 0.0, end: 300.0).animate(controller);
    animation.addStatusListener((status){
      if(status==AnimationStatus.completed){
        controller.reverse();
      }else if (status==AnimationStatus.dismissed) {
        controller.forward();

      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedWidget02(animation:animation);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}