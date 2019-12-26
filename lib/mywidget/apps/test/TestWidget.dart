import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';


class TestWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      title: "GAGA",
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("22222222222222222222"),
            Text("4444444444444444444444"),
          ],
        ),
      ),
    );
  }



}