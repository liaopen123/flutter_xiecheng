import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/hero/FirstHeroPage.dart';
import 'package:flutter_xiecheng/mywidget/animation/tween/AnimationWidget01.dart';

import 'animation/tween/animationwidget02/AnimationWidget02.dart';
import 'animation/tween/animationwidget03/AnimationWidget03.dart';
import 'animation/tween/animationwidget04/MultiAnimationWidget04.dart';


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
//          InkWell(
//            child:  Text("点击查看hero动画"),
//            onTap:_onTextClick(),
//          ),

          AnimationWidget01(),
          AnimationWidget02(),
          AnimationWidgetO3(),
          LogoApp(),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _onTextClick,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
  _onTextClick() {
Navigator.pushNamed(context, "firstHeroPage");

  }
}



