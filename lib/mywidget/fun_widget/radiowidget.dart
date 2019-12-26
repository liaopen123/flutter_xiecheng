import 'package:flutter/material.dart';



class RadioWidget extends StatefulWidget{
  @override
  _RadioWidgetState createState() =>_RadioWidgetState();



}


class _RadioWidgetState extends State<RadioWidget>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
      ),

      body: Container(
        child: Column(
          children: <Widget>[

            _row1(),

          ],


        ),
      ),
    );
  }


  Widget _row1(){
    return Row(
      
      children: <Widget>[
        
        Radio(value: 1, groupValue: 1, onChanged: (value){

        }),
        
        
      ],
      
    );
  }

}