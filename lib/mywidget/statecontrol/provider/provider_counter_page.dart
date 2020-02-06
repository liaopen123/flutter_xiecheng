import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/Counter.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/provider/second_page.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';
import 'package:provider/provider.dart';

class ProviderCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _count = Provider.of<Counter>(context);
    var textSize = Provider.of<int>(context).toDouble();
    return Container(
      child: CommonScaffold(
        title: "ProviderCounterPage",
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                'value:${_count.count}'
              ),
              Text("textSize:$textSize"),
              FloatingActionButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
