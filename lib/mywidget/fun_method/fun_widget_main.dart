import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';

import 'navigator_back_intercepter_widget.dart';
import 'package:flutter_xiecheng/mywidget/statecontrol/Inherited_widget/test_inherited.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/GestureDetector/gesture_detector_widget.dart';
class FunWidgetMain extends StatefulWidget {
  _FunWidgetMain createState() => _FunWidgetMain();
}

class _FunWidgetMain extends State<FunWidgetMain> {
  List<String> items = [
    "导航返回拦截",
    "GestureDetector"
  ];

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
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return NavigatorBackIntercepterWidget();
        }));
        break;

      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return GestureDetectorWidget();
        }));
        break;
    }
  }
}
