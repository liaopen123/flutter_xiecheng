import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/common_scaffold.dart';


class GestureDetectorTouchWidget extends StatefulWidget{
  @override
  _GestureDetectorTouchState createState() =>_GestureDetectorTouchState();
}
class _GestureDetectorTouchState extends State<GestureDetectorTouchWidget>{
  String currentState = "当前状态";
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(title:"手势识别拖动监听",
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: ()=>updateText("Tap"),
            onDoubleTap: ()=>updateText("onDoubleTap"),
            onLongPress: ()=>updateText("onLongPress"),

            child: Center(
              child: Text("用于手势识别"),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: MediaQuery.of(context).padding.right),
              child: Text(currentState),
            ),
          )

        ],
      ),
    ),);
  }

  updateText(String s) {
    setState(() {
      currentState = s;
    });
  }



}