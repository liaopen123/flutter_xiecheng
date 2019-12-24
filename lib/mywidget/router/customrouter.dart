import 'package:flutter/material.dart';

class CustomRouter extends PageRouteBuilder{
  final Widget widget;

  CustomRouter(this.widget)
  :super(
    //过渡时间
    transitionDuration:Duration(seconds: 1),
    //构造器
    pageBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        ){
      return widget;
    },

    transitionsBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child,
    ){

      //动画实现

//       左右滑动动画效果
       return SlideTransition(
         position: Tween<Offset>(
           // 设置滑动的 X , Y 轴
           begin: Offset( 0.0,1.0),
           end: Offset(0.0,0.0)
         ).animate(CurvedAnimation(
           parent: animation1,
           curve: Curves.fastOutSlowIn
         )),
         child: child,
       );

    },
  );




}