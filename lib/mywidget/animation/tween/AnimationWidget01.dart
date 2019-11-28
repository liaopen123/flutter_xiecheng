import 'package:flutter/material.dart';

class AnimationWidget01 extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _AnimationState01();
  }


}

class _AnimationState01 extends State<AnimationWidget01> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = new AnimationController(vsync: this,
        duration: const Duration(milliseconds: 2000)
    );

    animation =  new Tween(begin: 0.0,end: 300.0).animate(controller);
    animation.addListener((){
      setState(() {

      });
    });
    controller.forward();

//
//    controller = new AnimationController(
//        duration: const Duration(milliseconds: 2000), vsync: this);
//    animation = new Tween(begin: 0.0, end: 300.0).animate(controller)
//      ..addListener(() {
//        setState(() {
//          // the state that has changed here is the animation object’s value
//        });
//      });
//    controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: animation.value,
          width: animation.value,
          child: FlutterLogo(),
        ),

    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}