import 'package:flutter/material.dart';

class SizeBoxAndCardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("SizeBox and Card")),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: const Card(
                child: Center(
                  child: Text("廖鹏辉"),
                ),),
            ),
            SizedBox.fromSize(
              child:Container(
                width: 50,
                height: 50,
                color: Colors.greenAccent,
              ) ,
              size: Size(100, 100),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: SizedBox.expand(
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(

              width: 100,
              height: 100,
              child: FractionallySizedBox(
                //不管内部为多大 都以百分比为宽高
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ),
            //子控件可以超越父控件
            SizedOverflowBox(
              size: Size(100,100),
              child: Container(
                width: 120,
                height: 120,
                color: Colors.red,
              ),
            ),
            //溢出布局设置 maxheight,和maxwidth的时候 它们的值不能小于父控件的宽高
//            OverflowBox(
//              minHeight: 50,
//              maxHeight: 800,
//              minWidth: 50,
//              maxWidth: 800,
//              child: Container(
//                width: 580,
//                height: 580,
//    ),
//            ),
          //现在最大宽高
          LimitedBox(
            maxWidth: 100,
            maxHeight: 100,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.limeAccent,
            ),
          ),
            Text("Card:"),
            //Card和SizedBox是成对出现的，如果只有card的话 则card的大小就是包裹内容，很丑
            SizedBox(
              width: 100,
              height: 100,
              child: Card(
                color: Colors.red,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  side: new BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text("text"),
              ) ,
            ),

          ],
        ),
      ),
    );
  }




}