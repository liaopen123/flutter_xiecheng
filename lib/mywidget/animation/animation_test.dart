import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';

class AnimationTest extends StatefulWidget {
  @override
  _AnimationTestState createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest>
    with SingleTickerProviderStateMixin {
  List<Animation<double>> animationList = List();
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    for(int i=0;i<10;i++){
      animationList.add( Tween(begin: 0.0, end: 50.00).animate(CurvedAnimation(
        parent: _controller,
        curve: Interval(i*0.05, i*0.1),
      ))..addListener((){
        setState(() {
        });
      }));

    }



    _controller.forward();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = List();
    for (int i=0;i<animationList.length;i++) {
      widgets.add( Padding(
        padding: EdgeInsets.only(top:animationList[i].value*i),
        child: FlatButton(color:Colors.red,onPressed: null,child: Container(
          child: Icon(Icons.widgets,color: Colors.red,),
        ),),
      ));

    }
    return CommonScaffold(
      child: Stack(
        children: widgets,
      ),
    );
  }
}
