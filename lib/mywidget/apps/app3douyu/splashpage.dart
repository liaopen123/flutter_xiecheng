import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget{

  _SplashPageState createState() => _SplashPageState();


}

class _SplashPageState extends State<SplashPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                child: FadeInImage.assetNetwork(placeholder: "assets/images/dylogo.png", image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578561084821&di=9f67156107dcf89538ecabdf04dba5b5&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fa6cabdc0aa19a76a864799f7ff81c83a6db3d117746af-RPyhXf_fw658"),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/dylogo.png",width: MediaQuery.of(context).size.width,height: 100,),
              ),
            ],
          ),
        ),

      ),
    );
  }

}