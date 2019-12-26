import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget{

  _HomePage createState() => _HomePage();
}
class _HomePage extends State<HomePage>{

  double maxHeight=50.0;
  double alpha=0.0;

  @override
  Widget build(BuildContext context){
    return  Scaffold(

        body:Stack(
          children: <Widget>[
            MediaQuery.removePadding(context: context,
              removeTop: true,
              child: new Container(
                child: NotificationListener(
                  onNotification:(notify){
                    //深度为0  即第一个子元素 listview
                    if(notify is ScrollUpdateNotification&&notify.depth==0){
                      _onScroll(notify.metrics.pixels);
                    }
                  },
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 150,
                        child:  Swiper(
                          itemBuilder: (BuildContext context,int index){

                            return new Image.network(urls[index],fit: BoxFit.fitWidth,);
                          },
                          autoplay: true,
                          itemCount: urls.length,
                          pagination: new SwiperPagination(),
                          control: new SwiperControl(),
                          onTap: (index)=>{
                            Toast.show("index:$index", context),
                          },
                        ),
                      ),

                      Container(
                        height: 1000,
                        child: Text("哈哈哈"),
                      ),
                    ],
                  ),
                ),

              ),),

          Opacity(

          opacity: alpha,

            child:   Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text("首页"),
                ),
              ),

            ),
          ),
            Container(
              child: Text("首页",style: TextStyle(color: Colors.black,),),
            )

          ],
        ),


    );
  }



  List<String> urls = [
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=345702029,1768562274&fm=26&gp=0.jpg",
    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1669661818,872500031&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=774583426,3273578864&fm=26&gp=0.jpg",
  ];


  void _onScroll(double pixels) {
    if(0<=pixels&&pixels<=maxHeight){
    var percent = pixels/maxHeight;
      setState(() {
        alpha = percent;
      });
    }


    print(pixels);

  }
}

