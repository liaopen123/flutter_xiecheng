import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/AnimationWidget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/ImageWidget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/SizeBoxAndCardWidget.dart';
import 'package:flutter_xiecheng/mywidget/animation/hero/FirstHeroPage.dart';
import 'package:flutter_xiecheng/mywidget/animation/hero/SecondHeroPage.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_main.dart';
import 'package:flutter_xiecheng/thirdpart/camera/flutter_camera.dart';
import 'package:flutter_xiecheng/thirdpart/dio/single_instance_dio.dart';
import 'package:flutter_xiecheng/thirdpart/third_part_main.dart';
import 'package:flutter_xiecheng/xiechengreal/xie_cheng_main.dart';
import 'dart:io';
import 'dart:convert';

import 'package:toast/toast.dart';
import 'package:flutter/rendering.dart'show debugPaintSizeEnabled;
import 'mywidget/animation/animation_main.dart';
import 'mywidget/fun_method/microtask_future/thread_main.dart';
import 'mywidget/fun_widget/widget_main.dart';
import 'mywidget/multi_container/ScaffoldWidget.dart';
import 'mywidget/multi_container/TabPageWidget.dart';
import 'mywidget/multi_container/box/BoxDecorationWidget.dart';
import 'mywidget/multi_container/layout_main.dart';
import 'mywidget/fun_widget/physical_model_widget.dart';
import 'mywidget/multi_container/sliver/sliver_main.dart';
import 'mywidget/statecontrol/state_control_main.dart';
import 'mywidget/view/view_main.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/HttpRequest.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/navigator_back_intercepter_widget.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/microtask_future/futureweight.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/fun_widget_main.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/microtask_future/futurebuilderwidget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/spwidget.dart';

void main(){
//  debugPaintSizeEnabled = true;
initScreenUtil();
  return runApp(MyApp());
}

void initScreenUtil() {

}



class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

      routes: {
        "imagepage":(context)=> ImageWidget(),
        "firstHeroPage":(context)=> FirstHeroPage(),
        "secondHeroPage":(context)=> SecondHeroPage(),
        "tabPageWidget":(context)=> TabPageWidget(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  var items = ["图片控件","动画","tab+viewpager类似","底部tab+fragment类型","Http请求","异步相关","share_perference存储本地数据","携程app","BoxDecoration","SizeBox and Card","PhysicalModelWidget","29总布局汇总","常用三方","自定义View","Camera","16.(暂无)基础控件Widget","功能组件","状态管理"];


  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemExtent: 60,
          padding: EdgeInsets.all(10.0),
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              onPressed: ()=>_itemClick(index),
              child: Card(
                child: Center(
                  child: Text(items[index]),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.

    );
  }

  void _itemClick(int index) {
    Toast.show("index:$index", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    switch(index){
      case 0:
        Navigator.pushNamed(context, "imagepage");
        break;

      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return AnimationMain();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ScaffoldWidget();
        }));
        break;
        case 3:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return TabPageWidget();
        }));
        break;
        case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return HttpRequestWidget();
        }));
        break;
        case 5:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ThreadMain();
        }));
        break;

        case 6:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SPWidget();
        }));
        break;
        case 7:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return XieChengMain();
        }));
        break;
        case 8:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return BoxDecorationWidget();
        }));
        break; case 9:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SizeBoxAndCardWidget();
        }));
        break;
        case 10:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return PhysicalModelWidget();
        }));
        break;
        case 11:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return LayoutMain();
        }));
        break;
      case 12:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ThirdPartMain();
        }));
        break;
        case 13:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return ViewMain();
        }));
        break;
        case 14:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FlutterCamera();
        }));
        break;
        case 15:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return WidgetMain();
        }));
        break;
        case 16:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return FunWidgetMain();
        }));
        break;
        case 17:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return SCMain();
        }));
        break;
    }

  }
}
