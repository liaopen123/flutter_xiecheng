import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/Inherited_widget/share_data_widget.dart';


class TestSonTreeWidget extends StatefulWidget{


  _TestSonTreeSate createState()=>_TestSonTreeSate();
}

class _TestSonTreeSate extends State<TestSonTreeWidget>{
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("依赖发生变化");
  }

}