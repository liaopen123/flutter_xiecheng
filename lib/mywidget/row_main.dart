import 'package:flutter/material.dart';



class RowMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ROW")),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          _item,
          _item,
          _item,
          _item,

        ],
      ),

    );
  }


  Widget get _item{
    return    Container(
      width: 50,
      height: 50,
      color: Colors.red,
    );
  }
}