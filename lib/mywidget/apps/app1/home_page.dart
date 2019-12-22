import 'package:flutter/material.dart';

import 'back_bg_widget.dart';
import 'front_widget.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() =>_HomePageState();


}


class _HomePageState extends State<HomePage> with TickerProviderStateMixin{


 double maxLeftValue;//front的最后位置是屏幕的left的2/3的位置




  double _topBottom = 0;
  double _left = 0;
  double screenWidth=0;

  @override
  void initState() {
    super.initState();




  }
  @override
  Widget build(BuildContext context) {
    maxLeftValue = MediaQuery.of(context).size.width*(2/3);
    screenWidth = MediaQuery.of(context).size.width;




    return Scaffold(
      body: Stack(

        children: <Widget>[

          new BackBgWidget(startExpandFrontAnimation),
           Positioned(
              top: _topBottom,
              left: _left,
              bottom: _topBottom,
              child:  GestureDetector(

                onPanDown: (DragDownDetails details){

                },
                onPanUpdate: (DragUpdateDetails details){
                  setState(() {
                      print("details.delta.dx:::${details.delta.dx}");

                    //错误写法
//                      if(_left>=maxLeftValue){
//                        if(details.delta.dx>=0){
//                          _left=maxLeftValue;
//                          return;
//                        }
//                      }

                    //正确写法   因为有可能滑动过快的时候，dx的值是特别大的，就导致直接变负数，所以不能上面的方式去判断 这样会跨界。
                      if(details.delta.dx+_left<0){
                        _left=0;
                        _topBottom = _left/2;
                        return;
                      }

                      if(details.delta.dx+_left>maxLeftValue){
                        _left=maxLeftValue;
                        _topBottom = _left/2;
                        return;
                      }


                    _left +=details.delta.dx;
                    _topBottom = _left/2;

//                    _top +=details.delta.dy;
                  });
                },

                onPanEnd: (DragEndDetails dragEndDetails){
                  print("松手   23333$_left");
                  //当松手的时候 判断 数值，如果 _left>屏幕的1/2宽度，那么就执行shrink动画,反之则执行expand动画。
                  if(_left<maxLeftValue||_left>0){
                    if(_left<screenWidth/2){
                      startExpandFrontAnimation();

                    }else{
                      startShrinkFrontAnimation();
                    }


                  }

                },

                child:  new FrontWidget(cornerPercnet: _left/maxLeftValue,shrinkAnimation: startShrinkFrontAnimation,),
              ),
            ),

        ],


      ),
    );
  }

  void startExpandFrontAnimation() {


    AnimationController   expandController = new AnimationController(vsync: this,
        duration: const Duration(milliseconds: 200)
    );

    Animation<double> expandFrontWidgetAnimation =  new Tween(begin: _left,end: 0.0).animate(expandController);
    expandFrontWidgetAnimation.addListener((){
      setState(() {
        print("setStatesetStatesetStatesetState:${expandFrontWidgetAnimation.value}");
        _left = expandFrontWidgetAnimation.value;
        _topBottom = _left/2;
      });
    });


    expandController.forward();

  }

  void startShrinkFrontAnimation() {
    AnimationController shrinkController = new AnimationController(vsync: this,
        duration: const Duration(milliseconds: 200)
    );

    Animation<double> shrinkFrontWidgetAnimation =  new Tween(begin: _left,end: maxLeftValue).animate(shrinkController);
    shrinkFrontWidgetAnimation.addListener((){
      setState(() {
        print("setStatesetStatesetStatesetStateshrinkFrontWidgetAnimation:${shrinkFrontWidgetAnimation.value}");

        _left = shrinkFrontWidgetAnimation.value;
        _topBottom = _left/2;
      });
    });
    shrinkController.forward();
  }



}