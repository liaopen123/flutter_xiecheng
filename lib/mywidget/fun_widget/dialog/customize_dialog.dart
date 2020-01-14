import 'package:flutter/material.dart';

class CustomizeDialog extends Dialog{


  CustomizeDialog({Key key,}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(12),

    child: Material(
        type: MaterialType.transparency,//透明类型
      child: new Center(
        child: SizedBox(
          width: 120,
          height: 120,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                new Padding(padding: EdgeInsets.only(top: 20),
                child: Text("输入文本内容"),),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}