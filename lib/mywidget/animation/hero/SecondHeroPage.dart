import 'package:flutter/material.dart';

import 'PhotoHero.dart';


class SecondHeroPage extends StatelessWidget{
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero动画演示2"),
      ),
   body: new Container(
    child: PhotoHero(photo: "https://hbimg.huabanimg.com/ed8d8209add2616d92ecce2df80e65136eebe17a5c478-NMp8NQ",
      width: 100,),
    ),
    );
  }
  doNext() {
    Navigator.of(context).pop();
  }
}

