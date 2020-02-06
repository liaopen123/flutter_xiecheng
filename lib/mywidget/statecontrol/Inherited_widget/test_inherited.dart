import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/Inherited_widget/share_data_widget.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/Inherited_widget/test_son_tree_widget.dart';
class TestInheritedWidget extends StatefulWidget{
  @override
  _TestInheritedState createState() {
    return _TestInheritedState();
  }

}

class _TestInheritedState extends State<TestInheritedWidget>{

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("inherited"),),
      body: Container(
        child: Center(
          child: ShareDataWidget(
            data: count,
            widget: Column(

              children: <Widget>[

                TestSonTreeWidget(),
                RaisedButton(
                  child: Text("add"),
                  onPressed: (){
                    setState(() {
                      count++;
                    });
                  },
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }

}