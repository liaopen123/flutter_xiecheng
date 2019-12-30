import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';
import 'package:markdown/markdown.dart' hide Text;
const String _markdownData = """


```
    Future f1 = new Future(() => print('f1'));
    Future f2 = new Future(() => null);
    Future f3 = new Future.delayed(Duration(seconds: 1), () => print('f2'));
    Future f4 = new Future(() => null);
    Future f5 = new Future(() => null);

    f5.then((_) => print('f3'));
    f4.then((_) {
      print('f4');
      new Future(() => print('f5'));
      f2.then((_) {
        print('f6');
      });
    });
    f2.then((m) {
      print('f7');
    });
    print('f8');
```

""";
class MicroTaskFuturePage extends StatefulWidget {
  @override
  _MicroTaskFuturePageState createState() => _MicroTaskFuturePageState();
}

class _MicroTaskFuturePageState extends State<MicroTaskFuturePage> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    Widget child = result.isEmpty
        ? null
        : Text(
            result,
            style: TextStyle(color: Colors.white),
          );
    return CommonScaffold(
      child: Container(
        child: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: _doNext1,
              child: Text("next"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(4),
              constraints:
                  BoxConstraints(minHeight: 100, minWidth: double.infinity),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: child,
            ),
            Container(
              constraints: BoxConstraints(minHeight: 100,minWidth: double.infinity),
              child: Markdown(data: _markdownData),
            ),
          ],
        ),
      ),
    );
  }

  //output
  void _doNext1() {
    result = "";
    result += "--start";
    Future(() => result += "--future");
    scheduleMicrotask(() => result += "--scheduleMicrotask");
    result += "--end";
    setState(() {});
  }

  void testFuture() {
    Future f1 = new Future(() => print('f1'));
    Future f2 = new Future(() => null);
    Future f3 = new Future.delayed(Duration(seconds: 1), () => print('f2'));
    Future f4 = new Future(() => null);
    Future f5 = new Future(() => null);

    f5.then((_) => print('f3'));
    f4.then((_) {
      print('f4');
      new Future(() => print('f5'));
      f2.then((_) {
        print('f6');
      });
    });
    f2.then((m) {
      print('f7');
    });
    print('f8');
  }
}
