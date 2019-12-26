import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget{

  String title;
  Widget child;

  CommonScaffold({ this.title : "233",@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: child,

    );
  }

}