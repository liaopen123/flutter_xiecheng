import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/RotationWidget.dart';
import 'package:popup_menu/popup_menu.dart';

class FutureWidget extends StatefulWidget{

  _FutureWidget createState() => _FutureWidget();

}

class _FutureWidget extends State<FutureWidget>{
  String result = "待获取结果";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: ListView(

          children: <Widget>[

            Text(result),

            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("future then"),
              onPressed: doNest,
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("同步 async await"),
              onPressed: testAsync,
            ),
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("future.whenComplete(类似finally)"),
              onPressed: whenComplete,
            ),   MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("future.timeout"),
              onPressed: testFuture,
            ),
          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
        child:  Icon(Icons.add),
        onPressed: _showPopUpWindow,
      ),
    );
  }



  void _showPopUpWindow() {
//    PopupMenu.context = context;
//    PopupMenu menu = PopupMenu(
//        items: [
//          MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
//          MenuItem(title: 'Home', image: Icon(Icons.home, color: Colors.white,)),
//          MenuItem(title: 'Mail', image: Icon(Icons.mail, color: Colors.white,)),
//          MenuItem(title: 'Power', image: Icon(Icons.power, color: Colors.white,)),
//          MenuItem(title: 'Setting', image: Icon(Icons.settings, color: Colors.white,)),
//          MenuItem(title: 'Traffic', image: Icon(Icons.traffic, color: Colors.white,))],
//        onClickMenu: onClickMenu,
//        stateChanged: stateChanged,
//        onDismiss: onDismiss);
//
//    menu.show(rect: rect);

  }

  Future<String> _testFuture() {

//        return Future.value("lphsuccess");

        return Future.error("lph error");

//        throw new Error();

    }




  void doNest(){
    _testFuture().then((s){
      setState(() {
        result = s;
      });
    },onError: (e){
      setState(() {
        result= "onError:$e";
      });
    }).catchError((e){
      setState(() {
        result = "catchError$e";
      });
    });
  }



  //同步
  testAsync() async{

   result = "异步"+ await Future.delayed(Duration(milliseconds: 3000),(){
      return Future.value("123444444");
    });

   print("result:$result");
  }


  void whenComplete() {
    
    var random  = new Random();
    Future.delayed(Duration(milliseconds: 300),(){
      if (random.nextBool()) {
        return Future.value("廖鹏辉最帅");
      }else{
        throw "车祸现场";
      }
    }).then((s){
      setState(() {
        result = s;
      });
    }).catchError((e){

      setState(() {
        result ="eeror with complete";
      });

    }).whenComplete((){
      print("finish");
    });

    

  }


  testTimeout(){

   Future.delayed(Duration(milliseconds: 3000),(){
     return "lph  success timeout";
   }).timeout(Duration(milliseconds: 4000)).then((value){
     setState(() {
     result = value;
     });
   }).catchError((e){
     setState(() {
       result = "e:$e";
     });
   });

  }





  testFuture(){

    print("开始执行演示操作勒.....");
  var result = getStting();
  print("马上么:$result");


  }



  Future<String> getStting() async{

  String value =   await Future.delayed(Duration(milliseconds: 4000),(){
      return "廖鹏辉";
    }).then((value){
//      print("拿到结果:$value");

      return "拿到结果:$value";
    });

    print("拿到结果:$value");
    return value;
  }
}

