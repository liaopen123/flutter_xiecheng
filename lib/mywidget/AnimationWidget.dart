import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/AnimationWidget01.dart';

import 'animation/animationwidget02/AnimationWidget02.dart';

class AnimationWidget extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    return _AnimationWidget();
  }



}


class _AnimationWidget extends State<AnimationWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动画"),
      ),
      body: ListView(
        children: <Widget>[
          AnimationWidget01(),
          AnimationWidget02(),

        ],
      ),
    );
  }

}

