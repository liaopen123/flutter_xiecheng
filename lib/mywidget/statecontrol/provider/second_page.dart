import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/Counter.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Consumer2<Counter, int>(
            builder: (context, Counter counter, int textSize, _) => Center(
                  child: Text(
                      "value:${counter.count},textsize:${textSize.toDouble()}"),
                )),
        floatingActionButton: Consumer<Counter>(
          builder: (context, Counter counter, child) => FloatingActionButton(
            onPressed: counter.add,
            child: child,
          ),
          child: Icon(Icons.add),
        ));
  }
}
