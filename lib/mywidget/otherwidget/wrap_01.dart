import 'package:flutter/material.dart';

const width = 80.0;
const height = 60.0;
const Map<int,TableColumnWidth> widths  = {
  0:FixedColumnWidth(100),
  1:FixedColumnWidth(150),
  2:FixedColumnWidth(50),
};
class Wrap01 extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flow 较为复杂，一般使用wrap"),),
      body: Container(
        child:Wrap(
          spacing: 8,
          runSpacing: 4,
          children: <Widget>[

            Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ), Chip(
              avatar: CircleAvatar(backgroundColor: Colors.blue.shade900,child: Text("lph"),),
              label: Text("廖鹏辉"),
            ),
          ],
        ),
      ),
    );
  }

}

