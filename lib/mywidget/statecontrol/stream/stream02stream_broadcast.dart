import 'dart:async';

import 'package:flutter/material.dart';

class Stream02StreamBroadcast extends StatefulWidget {
  @override
  _Stream02StreamBroadcastState createState() => _Stream02StreamBroadcastState();
}

class _Stream02StreamBroadcastState extends State<Stream02StreamBroadcast> {
  StreamController _controller  = new StreamController.broadcast();
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
     });


    _subscription.pause();
    _sink.add([1,2,3]);
    _subscription.resume();
    _sink.add({"a":1,"b":2});




  }


  @override
  void dispose() {
    super.dispose();
    _sink.close();
    _subscription.cancel();
    _controller.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
