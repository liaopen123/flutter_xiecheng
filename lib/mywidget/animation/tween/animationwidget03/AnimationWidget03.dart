import 'package:flutter/material.dart';

import 'GrowTransition.dart';
import 'LogoWidget.dart';

class AnimationWidgetO3 extends StatefulWidget{

  _AnimationWidgetO3 createState()=> _AnimationWidgetO3();

}


class _AnimationWidgetO3 extends State<AnimationWidgetO3> with TickerProviderStateMixin{

  Animation animation;
  AnimationController controller;


  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    final CurvedAnimation curve =
    new CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = new Tween(begin: 0.0, end: 300.0).animate(curve);
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return new GrowTransition(child: new LogoWidget(), animation: animation);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}