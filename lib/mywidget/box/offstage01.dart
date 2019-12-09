import 'package:flutter/material.dart';
class OffStage01 extends StatefulWidget {
  _OffStage01 createState() =>_OffStage01();
}
class _OffStage01 extends State<OffStage01> {
  bool isShow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OffStage01"),),
      body: Container(
      child: Column(
        children: <Widget>[
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text(isShow?"隐藏":"显示"),
            onPressed: (){
              setState(() {
                isShow = !isShow;
              });
            },
          ),

          Offstage(
            offstage: !isShow,
            child: Container(
              width: 200,
              height: 200,
            ),

          )
        ],
      ),
      ) ,
    );
  }
}