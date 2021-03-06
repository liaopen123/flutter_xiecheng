import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/padding/padding_01.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/GestureDetector/gesture_detector_widget.dart';
import 'package:flutter_xiecheng/mywidget/fun_method/GestureDetector/gesture_detector_touch_widget.dart';
class AlignMain extends StatefulWidget {
  _AlignMain createState() => _AlignMain();
}

class _AlignMain extends State<AlignMain> {
  List<String> items = ["点击事件监听", "滑动监听"];

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
          return GestureDetectorWidget();
        }));
        break;
      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return GestureDetectorTouchWidget();
        }));
        break;
    }
  }
}
