import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';

///flutter  提供了 Abou
///
///
List<Widget> widgets = [
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
  new SizedBox(
    height: 100,
    child: new Text("1"),
  ),
];

class DialogMain extends StatefulWidget {
  _DialogMain createState() => _DialogMain();
}

class _DialogMain extends State<DialogMain>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  List<String> items = [
    "AboutDialog",
    "AlertDialog",
    "SimpleDialog",
    "CupertinoAlertDialog",
    "CupertinoFullscreenDialogTransition"
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ContainerListWidget(
      items: items,
      itemClick: itemClick,
    );
  }

  void itemClick(int index) {
    switch (index) {
      case 0:
        showMyAboutDialog();
        break;
      case 1:
        showAlertDialog();
        break;
      case 2:
        showSimpleDialog();
        break;
      case 3:
        showCupertinoAlertDialog();
        break;
      case 4:
        Navigator.push(context, new MaterialPageRoute(builder: (context){
          return CupertinoFullscreenDialogTransitionPage();
        }));

        break;
    }
  }

  void showDialog01() {
    showDialog(
      context: context,
      builder: (context) {
        return new AlertDialog(
          title: Text("FBI WARNING"),
          content: SingleChildScrollView(
            child: new Column(
              children: widgets,
            ),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("确认")),
            FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("取消")),
          ],
        );
      },
    );
  }

  void showMyAboutDialog() {
//    showAboutDialog(context: context,applicationName: "百宝箱",applicationVersion: "1.0.0",applicationIcon: Icon(Icons.android),applicationLegalese: "相关条款233",children: <Widget>[
//      FloatingActionButton(
//        child: Icon(Icons.close),
//        onPressed: (){
//          Navigator.of(context).pop();
//        },
//      ),  FloatingActionButton(
//        child: Icon(Icons.close),
//        onPressed: (){
//          Navigator.of(context).pop();
//        },
//      ),  FloatingActionButton(
//        child: Icon(Icons.close),
//        onPressed: (){
//          Navigator.of(context).pop();
//        },
//      ),
//    ],);

    showDialog(
      context: context,
      builder: (context) {
        return AboutDialog(
          applicationName: "百宝箱2",
          applicationVersion: "1.0.0",
          applicationIcon: Icon(Icons.android),
          applicationLegalese: "相关条款233",
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black26,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text("AlertDialog FBI Warning"),
            content: Container(
                height: 300,
                color: Colors.yellow,
                //添加ScrollView为了不出现警告框
                child: SingleChildScrollView(
                  child: Column(
                    children: widgets,
                  ),
                )),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              FloatingActionButton(
                child: Text("确认"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FloatingActionButton(
                child: Text("取消"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void showSimpleDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("SimpleDialog"),
            children: <Widget>[
              Text("SimpleDialog和AlertDialog的区别:"),
              Text("1.AlertDialog带有actions，既：确认,取消button,而SimpleDialog默认是不带的。"),
              Text("1.SimpleDialog没有content,只有children。"),
            ],
            contentPadding: EdgeInsets.all(20),
          );
        });
  }

  void showCupertinoAlertDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("CupertinoAlertDialog"),
            content: Text("也就是IOS风格的AlertDialog"),
            actions: <Widget>[
              Material(
                type: MaterialType.transparency,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text("确认")),
                ),
              ),
              Material(
                type: MaterialType.transparency,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(child: Text("取消")),
                ),
              ),
            ],
          );
        });
  }

//  void showCupertinoFullScreenDialog() {
//    showDialog(
//        context: context,
//        builder: (context) {
//          return CupertinoFullscreenDialogTransition(
//            child:    Center(child: ColorBlock(text: "ssps",),),
//          animation: _animationController,
//
//          );
//        });
//  }
}



class CupertinoFullscreenDialogTransitionPage extends StatefulWidget {
  @override
  _CupertinoFullscreenDialogTransitionPageState createState() => _CupertinoFullscreenDialogTransitionPageState();
}

class _CupertinoFullscreenDialogTransitionPageState extends State<CupertinoFullscreenDialogTransitionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoFullscreenDialogTransition"),
      ),
      body: ListView(
        children: <Widget>[
       Text("简介"),
          CupertinoFullscreenDialogTransitionDemo()
        ],
      ),
    );
  }
}

class CupertinoFullscreenDialogTransitionDemo extends StatefulWidget {
  @override
  _CupertinoFullscreenDialogTransitionDemoState createState() => _CupertinoFullscreenDialogTransitionDemoState();
}

class _CupertinoFullscreenDialogTransitionDemoState extends State<CupertinoFullscreenDialogTransitionDemo> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _curvedAnimation = new CurvedAnimation(parent: _controller, curve: Curves.decelerate);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Container(
            child: RaisedButton(
              child: Text("点我"),
              onPressed: () => _controller.forward(from: 0),
            ),
          ),
        ),
        Container(
          child: CupertinoFullscreenDialogTransition(
            animation: _controller,
            child: Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black12,
              child: Text("CupertinoFullscreenDialogTransition"),
            ),
          ),
        )
      ],
    );
  }
}