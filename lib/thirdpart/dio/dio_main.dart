import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/align/align_02.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';

import 'dio_request.dart';

class DioMain extends StatefulWidget {
  _DioMain createState() => _DioMain();
}

class _DioMain extends State<DioMain> {
  List<String> items = ["Dio基本用法", "align有尺寸因子"];

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
          return DioRequestWidget();
        }));
        break;
      case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return Align02();
        }));
        break;
    }
  }
}
