import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/container/container_list_widget.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/otherwidget/Flow_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/otherwidget/table_01.dart';
import 'package:flutter_xiecheng/mywidget/multi_container/otherwidget/wrap_01.dart';

class OtherMain extends StatefulWidget {
  _OtherMain createState() => _OtherMain();
}

class _OtherMain extends State<OtherMain> {
  List<String> items = [
    "Flow","Table","Wrap"
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
          return Flow01();
        }));
        break;
        case 1:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return Table01();
        }));
        break;
        case 2:
        Navigator.push(context, new MaterialPageRoute(builder: (context) {
          return Wrap01();
        }));
        break;
    }
  }
}
