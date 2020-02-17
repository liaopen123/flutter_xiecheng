import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FutureBuilderMain extends StatefulWidget {
  @override
  _FutureBuilderMainState createState() => _FutureBuilderMainState();
}

class _FutureBuilderMainState extends State<FutureBuilderMain> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTapUp: (details) {
          setState(() {
            hasError = Random().nextBool();
          });

        },
        child: Container(
            child: FutureBuilder(
                future: _getListData(),
                builder: (context, snapshot) {

                  if (snapshot.hasError) {
                    return Center(
                      child: Text("发生错误${snapshot.error.toString()}"),
                    );
                  }
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }



                  var datas = snapshot.data;

                  return ListView.builder(
                      itemCount: datas.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          color: Colors.grey,
                          child: Text(datas[index]),
                        );
                      });
                })),
      ),
    );
  }

  Future<List<String>> _getListData() async {
    if (hasError) {
      return Future.error("廖鹏辉真帅");
    }
    await Future.delayed(Duration(seconds: 2));
    return List<String>.generate(10, (index) => "$index title");
  }
}
