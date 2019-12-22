import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/common_scaffold.dart';

import 'back_bg_widget.dart';
import 'front_widget.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() =>_HomePageState();


}


class _HomePageState extends State<HomePage>{


 double maxLeftValue;//front的最后位置是屏幕的left的2/3的位置




  double _top_bottom = 0;
  double _left = 0;

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    maxLeftValue = MediaQuery.of(context).size.width*(2/3);
    return Scaffold(
      body: Stack(

        children: <Widget>[

          new BackBgWidget(),
           Positioned(
              top: _top_bottom,
              left: _left,
              bottom: _top_bottom,
              child:  GestureDetector(

                onPanDown: (DragDownDetails details){

                },
                onPanUpdate: (DragUpdateDetails details){
                  setState(() {
                      print("details.delta.dx:::${details.delta.dx}");

                    //错误写法
//                      if(_left>=maxLeftValue){
//                        if(details.delta.dx>=0){
//                          _left=maxLeftValue;
//                          return;
//                        }
//                      }

                    //正确写法   因为有可能滑动过快的时候，dx的值是特别大的，就导致直接变负数，所以不能上面的方式去判断 这样会跨界。
                      if(details.delta.dx+_left<0){
                        _left=0;
                        _top_bottom = _left/2;
                        return;
                      }

                      if(details.delta.dx+_left>maxLeftValue){
                        _left=maxLeftValue;
                        _top_bottom = _left/2;
                        return;
                      }


                    _left +=details.delta.dx;
                    _top_bottom = _left/2;

//                    _top +=details.delta.dy;
                  });
                },

                onPanEnd: (DragEndDetails dragEndDetails){
                  //当松手的时候 判断 数值，如果 _left>屏幕的1/2宽度，那么就执行shrink动画,反之则执行expand动画。

                },

                child:  new FrontWidget(),
              ),
            ),

        ],


      ),
    );
  }



}