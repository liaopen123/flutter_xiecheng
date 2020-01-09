import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget{

  _SplashPageState createState() => _SplashPageState();


}

class _SplashPageState extends State<SplashPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[


            Positioned(
               bottom: 0,
                left: 0,
              child: Text("Test"),
            ),
          ],
        ),

      ),
    );
  }

}