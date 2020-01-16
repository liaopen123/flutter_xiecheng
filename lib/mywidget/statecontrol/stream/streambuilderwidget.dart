import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidgetPage extends StatefulWidget {
  @override
  _StreamBuilderWidgetPageState createState() => _StreamBuilderWidgetPageState();
}

class _StreamBuilderWidgetPageState extends State<StreamBuilderWidgetPage> {
  StreamController<int> _controller = StreamController.broadcast();//定义一个全局的`StreamController`
  Sink<int> _sink;
  int _count = 0;

  @override
  void initState() {
    super.initState();
    _sink = _controller.sink;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: StreamBuilder(builder: (_,snapshot){
           return Text("${snapshot.data}");
          },
          stream: _controller.stream,
          initialData: _count,),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>_sink.add((_count++)),child: Icon(Icons.add),),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _sink.close();
    _controller.close();
  }


}
