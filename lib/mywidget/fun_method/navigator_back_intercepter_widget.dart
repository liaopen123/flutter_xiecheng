import 'package:flutter/material.dart';

class NavigatorBackIntercepterWidget extends StatefulWidget {
  _NavigatorBackIntercepterWidget createState() =>
      _NavigatorBackIntercepterWidget();
}

class _NavigatorBackIntercepterWidget
    extends State<NavigatorBackIntercepterWidget> {
  DateTime lastTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("返回监听"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text("两次返回退出界面"),
            ),
            WillPopScope(
                child:   Text(""),
                onWillPop: () async {
                  if (lastTime == null ||
                      DateTime.now().difference(lastTime) >
                          Duration(seconds: 1)) {
                    lastTime = DateTime.now();
                    return false;
                  } else {
                    return true;
                  }
                })
          ],
        ),
      ),
    );
  }
}
