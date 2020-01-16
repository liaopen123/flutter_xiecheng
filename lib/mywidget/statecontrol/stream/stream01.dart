import 'dart:async';

import 'package:flutter/material.dart';

class Stream01Page extends StatefulWidget {
  @override
  _Stream01PageState createState() => _Stream01PageState();
}

class _Stream01PageState extends State<Stream01Page> {
  StreamController  _controller = new StreamController();
  Sink _sink;
  StreamSubscription _subscription;


  @override
  void initState() {
    super.initState();

    _sink = _controller.sink;
    _sink.add("A");
    _sink.add(11);
    _sink.add(11.6);
    _subscription = _controller.stream.listen((data){
      print("listener:$data");
    });//stream通过sink添加数据，stream通过listen监听数据 返回的 StreamSubscription 用来操作数据的监听(pause,resume,cancel)。


    _subscription.pause();

    _sink.add([1,2,3]);
    _subscription.resume();
    _sink.add({"a":1,"b":2});
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }


  @override
  void dispose() {
    super.dispose();

    _sink.close();
    _controller.close();
    _subscription.cancel();
  }
}
