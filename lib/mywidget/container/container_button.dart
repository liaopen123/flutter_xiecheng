import 'package:flutter/material.dart';
///
///
///
///
///
enum TapState{
 DOWN,NOMAL,UNENABLE,
}

class ContainerButton extends StatefulWidget{
  _ContainerButton createState()=>_ContainerButton();

}
class _ContainerButton extends State<ContainerButton> {


  Color btnColor = Colors.pink;
  Align align;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _button(),

      ),
    );
  }

  Widget _button(){
    return GestureDetector(
      onTapDown:(TapDownDetails details){
        _changeColor(TapState.DOWN);
      },
      onTapUp: (TapUpDetails details){
        _changeColor(TapState.NOMAL);
      },
      onTap: _doNext(),

      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(50,50)),
          color: btnColor,
        ),
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Text("确定",style: TextStyle(color: Colors.white),),
      ),
    );
  }

  _changeColor(TapState tapState) {
    print("tapState:$tapState");
    switch(tapState){

      case TapState.DOWN:
        setState(() {
        btnColor = Colors.yellow;
        });
        break;
      case TapState.UNENABLE:
        setState(() {
        btnColor = Colors.grey;
        });
        break;
      case TapState.NOMAL:
        setState(() {
        btnColor = Colors.pink;
        });
        break;

    }

  }

  _doNext() {
    print("next");
  }

}

