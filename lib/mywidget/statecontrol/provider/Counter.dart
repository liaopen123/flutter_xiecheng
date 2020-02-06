import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier{

  int  _count=0;


  void add(){
    _count++;
    notifyListeners();
  }

  get count =>_count;


}