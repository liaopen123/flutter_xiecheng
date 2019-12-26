import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/view/common_scaffold.dart';

class BottomSheetPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return null;
  }
}

class _BottomSheetPageState extends State<BottomSheetPage>{
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      child: Container(
        child: Builder(builder: (BuildContext context){
          return Column(
            children: <Widget>[

          FlatButton(
          child: Icon(Icons.add),
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
//                  return _showNomalWid(context);
                });
          },
          ),



            ],
          );
        }),
      ),
    );
  }



}