import 'package:flutter/material.dart';

///
class Baseline01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FractionallySizedBox"),
      ),
      body: Row(
        children: <Widget>[
          Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              "lphlph",
              style: TextStyle(
                  fontSize: 20, textBaseline: TextBaseline.alphabetic),
            ),

          ),

          Baseline(baseline: 50.0, baselineType: TextBaseline.alphabetic,child: new Container(
            width: 30,
            height: 30,
            color: Colors.red,
          ),),
          Baseline(baseline: 50.0, baselineType: TextBaseline.alphabetic
          ,child: Text("廖鹏辉",style: TextStyle(fontSize: 35,textBaseline: TextBaseline.alphabetic),),),
          Text("nobaseline"),
        ],
      ),
    );
  }
}
