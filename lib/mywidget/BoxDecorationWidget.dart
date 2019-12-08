import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class BoxDecorationWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Decoration"),),
      body: Container(
        child: Column(
          children: <Widget>[
            //边框+圆角
            Container(

              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFFF0000),width: 0.5),
                color: Color(0xFF9E9E9E),
                borderRadius: new BorderRadius.all(Radius.elliptical(50, 50)),
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Expanded(
                    flex: 1,
                    child: Text("打开网红圣地,记录美好瞬间"),
                  ),
                  Icon(
                    Icons.keyboard_voice
                  ),
                ],
              ),
            ),
            //阴影
            Container(
              height: 40,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.red,width: 0.5),
                color: Colors.grey,
                boxShadow:[BoxShadow(color: Color(0x99FFFF00), offset: Offset(5.0, 5.0),    blurRadius: 10.0, spreadRadius: 2.0), BoxShadow(color: Color(0x9900FF00), offset: Offset(1.0, 1.0)), BoxShadow(color: Color(0xFF0000FF))],
              ),
            ),
            //shape
            Container(
              height: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amberAccent,width: 0.5),
                color: Colors.deepOrange,
                shape: BoxShape.circle,
              ),
            ),
            //渐变
            Container(
              height: 100,
              decoration: new BoxDecoration(
                border: Border.all(color: Colors.amberAccent,width: 0.5),
                gradient: LinearGradient(colors: [Colors.white,Colors.black,],begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1)),
              ),
            ),
            //背景图像：
            Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.deepOrange,
              border: Border.all(color: Colors.cyanAccent,width: 0.5),
              shape: BoxShape.circle,
              image: new DecorationImage(image: NetworkImage('http://pic75.nipic.com/file/20150821/9448607_145742365000_2.jpg'),)),
            ),


          ],
        ),
      ),
    );
  }




}