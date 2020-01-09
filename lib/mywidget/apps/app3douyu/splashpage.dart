import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/model/SplashAdBean.dart';
import 'package:flutter_xiecheng/mywidget/view/countdowntimeview/countdownview.dart';
import 'package:flutter_xiecheng/thirdpart/dio/single_instance_dio.dart';
import 'package:toast/toast.dart';


class SplashPage extends StatefulWidget{

  _SplashPageState createState() => _SplashPageState();


}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin{
  SplashAd splashAd;
  Animation<double> animation;
  AnimationController controller;
  int totalSeconds = 5;
  int seconds =0;
  double progress =0;
  @override
  void initState() {
    super.initState();
    //get splash url and data
    getData();

    controller = new AnimationController(vsync: this,
        duration:  Duration(seconds: totalSeconds)
    );

    animation =  new Tween(begin: 0.0,end: 100.0).animate(controller);
    int step = 100~/totalSeconds;
    animation.addListener((){
      setState(() {
        progress = (animation.value);

        if(animation.value.toInt()%step==0){
          seconds = animation.value.toInt()~/step;
        }
        print("@progressprogress$progress,secondssecondsseconds$seconds");
      });
    });
    controller.forward();
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    Widget child;
    if(splashAd==null){
      child =   Container(
          margin: EdgeInsets.only(top: 80,left: 10,right: 10),
          child:Image.asset("assets/images/init_logo.webp")
      );
    }else{
      child = Container(
        height: MediaQuery.of(context).size.height,
        child:   CachedNetworkImage(
          fit: BoxFit.fill,
            imageUrl: '${splashAd.data.pageUri}'
        ),
      );
    }



    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
          child: Stack(
            children: <Widget>[
              child,

              Align(
                alignment: Alignment.bottomCenter,
                child:  Container(
                  color: Colors.white,
                  child: Padding(padding: EdgeInsets.all(MediaQuery.of(context).padding.bottom),
                    child: Image.asset("assets/images/init_icon.png",width: MediaQuery.of(context).size.width,height: 100,),),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child:    Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,right: MediaQuery.of(context).padding.right,),
                  child: CountDownView(
                    diam: 50,
                    progress:progress,
                    seconds:totalSeconds-seconds,
                  ),
                ),
              ),




            ],
        ),

      ),
    );
  }

  void getData() async{
    var map = await HttpUtils.request(API.splash,method: HttpUtils.POST,data: {});
     splashAd = SplashAd.fromJson(map);
  }

}