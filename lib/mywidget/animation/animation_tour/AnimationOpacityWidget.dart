import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';

class AnimationOpacityWidget extends StatefulWidget {
  @override
  _AnimationOpacityState createState() => _AnimationOpacityState();
}

class _AnimationOpacityState extends State<AnimationOpacityWidget> {
  double opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    var animations = _animationOpacity();
    animations.addAll(_animationContainer());
    return CommonScaffold(
      title: "AnimationOpacity",
      child: Column(
        children: animations,
      ),
    );
  }

  List<Widget> _animationOpacity() {
    return [
      Text(
        'AnimationOpacity的使用',
        style: TextStyle(color: Colors.blueAccent),
      ),
      MaterialButton(
          child: Text(
            'Show details',
            style: TextStyle(color: Colors.blueAccent),
          ),
          onPressed: () {
            setState(() {
              opacity = 1.0;
            });
          }),
      AnimatedOpacity(
        opacity: opacity,
        curve: Curves.easeInOutBack,
        duration: Duration(seconds: 2),
        child: Column(
          children: <Widget>[
            Text('Type: Owl'),
            Text('Age: 39'),
            Text('Employment: None'),
          ],
        ),
      ),
    ];
  }
  Color randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }
  double randomBorderRadius() {
    return Random().nextDouble() * 64;
  }

  double randomMargin() {
    return Random().nextDouble() * 64;
  }

  List<Widget> _animationContainer(){

    return[

      Padding(
        padding: EdgeInsets.only(top: 40),
        child:      Text(
          'AnimationContainer的使用',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),

      SizedBox(
        width: 128,
        height: 128,

        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.easeInOutBack,
          margin: EdgeInsets.all(randomMargin()),
          decoration: BoxDecoration(
          color: randomColor(),
            borderRadius: BorderRadius.circular(randomBorderRadius()),

          ),
        ),


      ),

      MaterialButton(
        color: Theme.of(context).primaryColor,
        child: Text(
          'change',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => null,
      ),


    ];

  }
}
