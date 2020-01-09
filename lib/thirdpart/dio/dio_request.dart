import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/model/tab_bean.dart';
import 'package:flutter_xiecheng/thirdpart/dio/interceptor/lphInterceptor.dart';
import 'package:flutter_xiecheng/thirdpart/dio/single_instance_dio.dart';
class DioRequestWidget extends StatefulWidget{
  _DioRequestWidget createState()=>_DioRequestWidget();
}
class _DioRequestWidget extends State<DioRequestWidget>{

  String getResult = "get请求的结果:";
  String postResult = "post请求的结果:";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dio基本用法"),),
      body: Container(
        child: ListView(
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("get请求"),
              onPressed: _get,
            ),


            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("post请求"),
              onPressed: _post,
            ),
            Text(postResult),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("自定义拦截器并添加"),
              onPressed: _interceptor,
            ),
            Text(postResult),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("转换json在转换为bean"),
              onPressed: _json2Bean,
            ),
          ],

        ),
      ),
    );
  }

 void _get() async{
//    var response = await dio.get("/api/popup",queryParameters: {"type":"1",});
//   setState(() {
//     getResult +="$response";
//   });
  }
  void _post() async{
//    var response = await dio.get("/member/select_member ",queryParameters: {"token":"8a2a5202-cff1-49b0-8148-a23da38a307d",});
//   setState(() {
//     postResult +="$response";
//   });
  }


  void _interceptor() async{
    var dio = Dio();
    dio.interceptors.add(LPHInterceptor());
    var response =await dio.get("http://www.baidu.com");
    setState(() {
      postResult +="${response.data}";
    });
  }


void _json2Bean() async{
    var response = await  Dio().get("https://apk-1256738511.file.myqcloud.com/FlutterTrip/data/travel_page.json");
    var tabBean = TabBean.fromJson(response.data);
    setState(() {
      postResult ="${tabBean.toString()}";
    });
  }
}