import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/animation/RotationWidget.dart';
import 'package:popup_menu/popup_menu.dart';

class FutureWidget extends StatefulWidget{

  _FutureWidget createState() => _FutureWidget();

}

class _FutureWidget extends State<FutureWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
//        child: BoxRotationAnimation(
//          title: "rotate",
//        ),
      ),



      floatingActionButton: FloatingActionButton(
        child:  BoxRotationAnimation(
          title: "rotate",
    ),
        onPressed: _showPopUpWindow,
      ),
    );
  }



  void _showPopUpWindow() {
//    PopupMenu.context = context;
//    PopupMenu menu = PopupMenu(
//        items: [
//          MenuItem(title: 'Copy', image: Image.asset('assets/copy.png')),
//          MenuItem(title: 'Home', image: Icon(Icons.home, color: Colors.white,)),
//          MenuItem(title: 'Mail', image: Icon(Icons.mail, color: Colors.white,)),
//          MenuItem(title: 'Power', image: Icon(Icons.power, color: Colors.white,)),
//          MenuItem(title: 'Setting', image: Icon(Icons.settings, color: Colors.white,)),
//          MenuItem(title: 'Traffic', image: Icon(Icons.traffic, color: Colors.white,))],
//        onClickMenu: onClickMenu,
//        stateChanged: stateChanged,
//        onDismiss: onDismiss);
//
//    menu.show(rect: rect);

  }
}