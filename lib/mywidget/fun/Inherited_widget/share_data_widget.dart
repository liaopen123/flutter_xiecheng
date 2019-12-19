import 'package:flutter/material.dart';


class ShareDataWidget extends InheritedWidget{

  int data;

  ShareDataWidget({@required this.data,Widget widget}):super(child:widget);



  static ShareDataWidget of (BuildContext context){
    return context.inheritFromWidgetOfExactType(ShareDataWidget);

  }


  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    //如果返回为true 则子树中依赖(build 函数中调用的)本widget的子widget的`state.didChangeDepencies`会被调用
    return oldWidget.data!=data;
  }

}