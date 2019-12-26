import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class AddTodoPage extends StatefulWidget {
  _AddTodoPageState createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.close,
            color: Colors.black54,
          ),
        ),
        elevation: 0,
        title: Text(
          "New Task",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 45, top: 60),
//        MediaQuery.of(context).viewInsets.bottom
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("What tasks are you planning to perform?"),
                TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                  style: TextStyle(fontSize: 26,fontFamily: 'Bold'),
                  autofocus: true,
                ),

             InkWell(
               onTap: (){
                 FocusScope.of(context).requestFocus(FocusNode());
               },
               child:    Container(
                 color: Colors.white,
                 padding: EdgeInsets.only(top: 80),
                 child: TextField(
                   enabled: false,
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.work,color: Colors.black54,),
                     hintText: "Work",
                     hintStyle: TextStyle(color: Colors.black54,fontSize: 16),
                     border: InputBorder.none,
                   ),
                 ),
               ),
             ),

                Divider(
                  height: 1,
                  color: Colors.black54,

                ),

                TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today,color: Colors.black54,),
                    hintText: "Today",
                    hintStyle: TextStyle(color: Colors.black54,fontSize: 16),
                    border: InputBorder.none,
                  ),
                ),
              ],
            ),
          ),
//          BackdropFilter(filter: prefix0.ImageFilter.blur(sigmaX: 5,sigmaY: 5),
//          child: Container(
//            color: Colors.white.withAlpha(0),
//          ),),



        ],
      ),




    );
  }
}
