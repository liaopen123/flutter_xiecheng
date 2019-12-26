import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/model/loginmode.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpRequestWidget extends StatefulWidget{

  _HttpRequestWidget createState() => _HttpRequestWidget();

}


///用到的插件
///http
class _HttpRequestWidget extends State<HttpRequestWidget>{

  String postRequestMsg = "post";
  String getRequestMsg = "get";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("网络请求")),
      body: Container(
        child: ListView(
         children: <Widget>[
           Text(postRequestMsg),
           Text(getRequestMsg),

         ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.wifi),
      ),
    );
  }




  Future _incrementCounter() async {
    var url = 'http://haiyouhetest-user.qingdao.cosmoplat.com/api/member/select_member';
    var response = await http.post(url, body: {'token': '233333'});
    //把json转换为实体
    var loginMode = LoginMode.fromJson(json.decode(response.body));
    setState(() {
      postRequestMsg =postRequestMsg+'msg233:${loginMode.msg},,,code233:${loginMode.code}';
    });

    var response2 = await http.get("https://www.baidu.com");
    setState(() {
      getRequestMsg=getRequestMsg +response2.body;
    });
//    print(await http.read('https://www.'));
  }
}