import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SmartFlareAnimation.dart';

class Flar01 extends StatefulWidget {
  @override
  _Flar01State createState() => _Flar01State();
}

class _Flar01State extends State<Flar01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  body: Align(
      alignment: Alignment.bottomCenter,
      child: SmartFlareAnimation()));


  }
}
