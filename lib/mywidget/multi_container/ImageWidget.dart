import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget{
  var screenWidth=0.00;
  @override
  Widget build(BuildContext context) {
    screenWidth= MediaQuery.of(context).size.width;
    return new Scaffold(
      appBar: AppBar(
        title: Text("图片示例"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Text("本地图片的三种加载方式:"),
          Image.asset("assets/images/fatcat.jpg",width: screenWidth,height: 200,),
          Image(
            image:AssetImage("assets/images/fatcat.jpg") ,
            width: screenWidth,height: 200,
          ),
          //加载sdcard image
//        import 'dart:io';
//    Image.file(File('/sdcard/Download/Stack.png')),
          Text("加载网络图片:"),
        Image.network('http://pic75.nipic.com/file/20150821/9448607_145742365000_2.jpg'),

          Text("占位图:"),
          FadeInImage.assetNetwork(placeholder: "assets/images/fatcat.jpg", image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1574854475211&di=58a843686bb64c5cc496af6e17bf728b&imgtype=0&src=http%3A%2F%2Fi1.hdslb.com%2Fbfs%2Farchive%2Fb98c7e931ec24a2c5793ba8faa6e74607303c371.jpg"),
          Text("配置图片缓存:"),
          Image(image: CachedNetworkImageProvider("http://pic75.nipic.com/file/20150821/9448607_145742365000_2.jpg")),
          Text("使用icon:"),
          Icon(Icons.android,size: 100.0),
          Text("FadeInImage2个图片的切换:"),
          FadeInImage.assetNetwork(placeholder: "assets/images/dylogo.png", image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1578561084821&di=9f67156107dcf89538ecabdf04dba5b5&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fa6cabdc0aa19a76a864799f7ff81c83a6db3d117746af-RPyhXf_fw658"),

        ],
      )
    );
  }

}