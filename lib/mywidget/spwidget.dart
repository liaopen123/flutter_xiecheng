import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPWidget extends StatefulWidget{

  _SPWidget createState() =>_SPWidget();

}

class _SPWidget extends State<SPWidget>{
  var instance;
  String content= "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("sp获取数据")),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 15.0,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(14.0))),
              child:   Container(
                padding: EdgeInsets.all(4.0),
                  child:Padding(
                    padding: EdgeInsets.all(4.0),
                    child: TextField(
                      onChanged:(value){
                        content = value;
                        print(content);
                      } ,
                      decoration: InputDecoration(labelText: "请输入存储的内容"),
                    ),
                  )
              ),
            ),

            MaterialButton(
             child: new Text("提交"),
              onPressed: _input,
            ),
            MaterialButton(
             child: new Text("获取"),
              onPressed: _get,
            ),
            MaterialButton(
             child: new Text("delete"),
              onPressed: _get,
            ),

            Text(result),
          ],
        ),
      ),

    );
  }


  void _input() async {
    print(content);
    var instance =  await SharedPreferences.getInstance();
    instance.setString("key",content);
  }

  void _get() async {
    var instance =  await SharedPreferences.getInstance();
   String value = instance.getString("key"??"得到为空");
    print("得到:$value");
    setState(() {
      result = value;
    });
  }
}