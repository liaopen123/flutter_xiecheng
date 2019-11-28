import "package:flutter/material.dart";

class LogoWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: new FlutterLogo(),
    );
  }

}
