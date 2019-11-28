import 'package:flutter/material.dart';

import 'PhotoHero.dart';


class FirstHeroPage extends StatelessWidget{
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero动画演示"),
      ),
      body: new Container(
            child: Center(
              child: PhotoHero(photo: "https://hbimg.huabanimg.com/ed8d8209add2616d92ecce2df80e65136eebe17a5c478-NMp8NQ",
                onTap: onTap1,
                width: 300,),
          )


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTap1,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void onTap1() {
    Navigator.pushNamed(context, "secondHeroPage");
  }

}

