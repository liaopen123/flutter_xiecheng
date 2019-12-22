import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/common_scaffold.dart';
import 'package:toast/toast.dart';

class SqFilterABC extends StatefulWidget {
  @override
  _SqFilterABCState createState() {
    return _SqFilterABCState();
  }
}

class _SqFilterABCState extends State<SqFilterABC> with TickerProviderStateMixin{
  String title;
  String content;
  AnimationController controller;
  Animation<double> animation;
  Animation<Offset> animation2;
  bool isExpand =false;
  @override
  void initState() {
    super.initState();
    initSqFilter();



    controller = new AnimationController(vsync: this,
        duration: const Duration(milliseconds: 100)
    );
    animation2 =
        Tween(begin: Offset(-5.5, 0.0), end: Offset(1.0, 0.0)).animate(controller);


    animation =  new Tween(begin: 0.0,end: 100.0).animate(controller);
    animation.addListener((){
      setState(() {

      });
    });


  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: "官方自带sqfilter",
      child: Container(
        child: Row(
          children: <Widget>[
            leftParts(animation,animation2),
            Expanded(child: _rightPart(this)),
          ],
        ),
      ),
    );
  }

  void initSqFilter() {

  }

  _rightPart(widget) {

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            onChanged: (value) {
              title = value;
            },
            decoration: InputDecoration(
                hintText: "请输入tilte", border: OutlineInputBorder()),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onChanged: (value) {
              content = value;
            },
            decoration: InputDecoration(
                hintText: "备注", border: OutlineInputBorder()),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: RaisedButton(
            onPressed: () {
//              print("title:$title,content:$content");
//              Toast.show("保存", context);
            if(widget.isExpand){
              controller.reverse();
              widget.isExpand = !widget.isExpand;
            }else {
              controller.forward();
              widget.isExpand = !widget.isExpand;
            }
            },
            child: Text("保存"),
          ),
        ),
      ],
    );

  }

  leftParts(animation,animation2) {
    return Container(
      width: animation.value,
      color: Color(0xff242133),
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: 80,
            child:   Image.asset("images/fatcat.jpg" ,width: 80,height: 80,)
            ,
          ),
          SlideTransition(
            position: animation2,
              child: Icon(Icons.print,color: Colors.amber,),
          )


        ],
      ),
    );
  }
}
