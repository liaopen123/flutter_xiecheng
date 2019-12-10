import 'package:flutter/material.dart';



class GridViewMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("ROW")),

      body: GridView.count(crossAxisCount: 2,
      scrollDirection: Axis.vertical, //滚动方向
//        reverse: true,//反向滚动
      shrinkWrap: true,

      children: List.generate(4, (index){

        return _item(index);

      }),),

    );
  }

  Widget  _item(int index){
    return    Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      child: Text("$index"),
      color: Colors.red,
    );
  }
}