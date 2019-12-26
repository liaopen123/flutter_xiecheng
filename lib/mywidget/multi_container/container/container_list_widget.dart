import 'package:flutter/material.dart';

class ContainerListWidget extends StatefulWidget{
  List<String> items;
  final void Function(int index) itemClick;


  ContainerListWidget({this.items, this.itemClick});
  _ContainerListWidget createState() => _ContainerListWidget();
}


class _ContainerListWidget extends State<ContainerListWidget>{



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Container"),
      ),
      body: ListView.builder(
          itemCount: widget.items.length,
          itemExtent: 60,
          padding: EdgeInsets.all(10.0),
          itemBuilder: (BuildContext context, int index) {
            return FlatButton(
              onPressed: ()=>widget.itemClick(index),
              child: Card(
                child: Center(
                  child: Text(widget.items[index]),
                ),
              ),
            );
          }),

    );
  }

}