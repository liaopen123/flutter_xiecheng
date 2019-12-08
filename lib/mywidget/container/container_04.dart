import 'package:flutter/material.dart';
///问题：gridview的高度如何控制  现在不是包裹啊   column的高度可以通过mainAxisSize去控制。max 和min去控制。
class Container04 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: GridView.count(crossAxisCount: 3,

          children: <Widget>[
            _item,
            _item,
            _item,
            _item,
            _item,
            _item,
          ],),
      ),
    );
  }

  Widget get _item {
    return   Column(
      mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.directions_car),
          Text("租车"),
        ],
    );
  }

}