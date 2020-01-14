import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/fun_widget/dialog/customize_dialog.dart';
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
  TextEditingController controller;
  String text = "";
  AnimationController _animationController;
  List<String> items = [
    "AboutDialog",
    "AlertDialog",
    "SimpleDialog",
    "CupertinoAlertDialog",
    "CupertinoFullscreenDialogTransition",
    "自定义Dialog",
    "SatefulDialog",
    "通过StatefulBuilder更新状态",
    "MyCustomLoadingDialog",
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
//        Navigator.push(context, new MaterialPageRoute(builder: (context) {
//          return CupertinoFullscreenDialogTransitionPage();
//        }));

        break;
      case 5:
        showDialog(
            context: context,
            builder: (context) {
              return CustomizeDialog();
            });
        break;
      case 6:
        showDialog(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return InputDialog(
                  onPress:(){

                  setState(() {
                    text = controller.text;
                  });
                  },
              );
            });
        break;
      case 7:
    showMyDialogWithStateBuilder(context);
        break;
        case 8:
          showMyCustomLoadingDialog(context);
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


class CupertinoFullscreenDialogTransitionDemo extends StatefulWidget {
  @override
  _CupertinoFullscreenDialogTransitionDemoState createState() =>
      _CupertinoFullscreenDialogTransitionDemoState();
}

class _CupertinoFullscreenDialogTransitionDemoState
    extends State<CupertinoFullscreenDialogTransitionDemo>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _curvedAnimation =
        new CurvedAnimation(parent: _controller, curve: Curves.decelerate);
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

class InputDialog extends Dialog {
  Function onPress;
  TextEditingController controller;
  String text1 ="";

  InputDialog({Key key,this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller = TextEditingController();
    controller.addListener(() {
      text1 = controller.text;
    });


    return StatefulBuilder(builder: (context,StateSetter setState){
      return         Padding(
        padding: EdgeInsets.all(12),
        child: Material(
          type: MaterialType.transparency, //透明类型
          child: new Center(
            child: SizedBox(
              width: 300,
              height: 300,
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
                    new Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: TextField(
                        onChanged: (value){
                          setState(){
                            text1 = value;
                          }
                        },
                        controller: controller,
                      ),
                    ),
                    RaisedButton(
                      onPressed: (){

                      },
                      child: Text("确定"),
                    ),    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("关闭"),
                    ),
                    Text(text1),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}


void showMyDialogWithStateBuilder(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        bool selected = false;
        return new AlertDialog(
          title: new Text("StatefulBuilder"),
          content:
          new StatefulBuilder(builder: (context, StateSetter setState) {
            return Container(
              child: new CheckboxListTile(
                  title: new Text("选项"),
                  value: selected,
                  onChanged: (bool) {
                    setState(() {
                      selected = !selected;
                    });
                  }),
            );
          }),
        );
      });
}



void showMyCustomLoadingDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return new MyCustomLoadingDialog();
      });
}

class MyCustomLoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Duration insetAnimationDuration = const Duration(milliseconds: 100);
    Curve insetAnimationCurve = Curves.decelerate;

    RoundedRectangleBorder _defaultDialogShape = RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)));

    return AnimatedPadding(
      padding: MediaQuery.of(context).viewInsets +
          const EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      duration: insetAnimationDuration,
      curve: insetAnimationCurve,
      child: MediaQuery.removeViewInsets(
        removeLeft: true,
        removeTop: true,
        removeRight: true,
        removeBottom: true,
        context: context,
        child: Center(
          child: SizedBox(
            width: 120,
            height: 120,
            child: Material(
              elevation: 24.0,
              color: Theme.of(context).dialogBackgroundColor,
              type: MaterialType.card,
              //在这里修改成我们想要显示的widget就行了，外部的属性跟其他Dialog保持一致
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: new Text("加载中"),
                  ),
                ],
              ),
              shape: _defaultDialogShape,
            ),
          ),
        ),
      ),
    );
  }
}

