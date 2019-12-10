import 'package:flutter/material.dart';

//更具index显示对应的widget
class InedexedStack01 extends StatefulWidget {

  _InedexedStack01 createState() => _InedexedStack01();
}
class _InedexedStack01 extends State<InedexedStack01> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: IndexedStack(
            index: currentIndex,
            children: <Widget>[
              Container(
                child: Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )),
              ),
              Container(
                child: Positioned(
                    left: 150,
                    top: 150,
                    child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                )),
              ),

              Container(
                child: Positioned(
                    left: 300,
                    top: 300,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    )),
              ),
            ],
          )),

      floatingActionButton: FloatingActionButton(
         child: Icon(Icons.plus_one),
        onPressed: (){
           setState(() {
             if(currentIndex<2) {
               currentIndex += 1;
             }else{
               currentIndex = 0;
             }
           });
        },
      ),
    );
  }
}
