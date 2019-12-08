import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_xiecheng/xiechengreal/widget/cached_image.dart';
import 'package:flutter_xiecheng/xiechengreal/widget/search_bar.dart';

const SEARCH_BAR_DEFAULT_TEXT = '网红打卡地 景点 酒店 美食';

class XieChengMain extends StatefulWidget {


  _XieChengMain createState() => _XieChengMain();
}

class _XieChengMain extends State<XieChengMain> {
  double appBarAlpha = 0;
  String cityName = "天津";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: <Widget>[
          MediaQuery.removePadding(context: context,
            removeTop: true,
            child: ListView(
              children: <Widget>[
                Container(
                    height: 150,
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          urls[index], fit: BoxFit.fill,);
                      },
                      autoplay: true,
                      itemCount: urls.length,
                      pagination: new SwiperPagination(),
                    )),

//                _funBar,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  _funBarItem,
                  _funBarItem,
                  _funBarItem,
                  _funBarItem,
                  _funBarItem,
                  ],
                ),
              ),

                _CardTopWidget,
                _CardMiddleWidget,
                _CardBottomWidget,
                Padding(
                  padding: EdgeInsets.fromLTRB(7,0,7,4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(7),
                      child:Column(

                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              _cardItem,
                              _cardItem,
                              _cardItem,
                              _cardItem,
                              _cardItem,
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               _cardItem,
                               _cardItem,
                               _cardItem,
                               _cardItem,
                               _cardItem,
                             ],
                            ),
                          )
                        ],
                      ) ,
                    ),
                  ),
                ),


              ],
            ),),


          //搜索框
          Container(
            padding: EdgeInsets.only(top: 20.0),
            decoration: BoxDecoration(
//              color: Colors.white,
              border: Border.all(color: Colors.white),
            ),
            height: 80,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text("天津市"),
                ),

                Icon(Icons.keyboard_arrow_down),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                  ),
                ),
              Container(
                margin: EdgeInsets.only(right: 8),
                child:Icon(Icons.message) ,
              ),
              ],
            ),
          ),
//          _appBar,

        ],

      ),
    );
  }

  List<String> urls = [
    "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=345702029,1768562274&fm=26&gp=0.jpg",
    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1669661818,872500031&fm=26&gp=0.jpg",
    "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=774583426,3273578864&fm=26&gp=0.jpg",
  ];


  /*自定义appBar*/
  Widget get _appBar {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0x66000000), Colors.transparent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            height: 80,
            decoration: BoxDecoration(
                color:
                Colors.white),
            child: SearchBar(
              searchBarType: appBarAlpha > 0.2
                  ? SearchBarType.homeLight
                  : SearchBarType.home,
              inputBoxClick: _jumpToSearch,
              speakClick: _jumpToSpeak,
              defaultText: SEARCH_BAR_DEFAULT_TEXT,
              city: cityName,
            ),
          ),
        ),
        Container(
          height: appBarAlpha > 0.2 ? 0.5 : 0,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 0.5)]),
        )
      ],
    );
  }

  void _jumpToSearch() {
//    NavigatorUtil.push(
//        context,
//        SearchPage(
//          hint: SEARCH_BAR_DEFAULT_TEXT,
//        ));
  }

  //跳转语音识别页面
  void _jumpToSpeak() {
//    NavigatorUtil.push(context, SpeakPage());
  }

  Widget get _funBarItem{

    return
      GestureDetector(
        onTap: (){},
        child: Column(
          children: <Widget>[
            CachedImage(
              imageUrl: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=345702029,1768562274&fm=26&gp=0.jpg",
              width: 32,
              height: 32,
            ),
            Text("buzdbub", style: TextStyle(fontSize: 12))
          ],
        ),
      );
  }


  Widget get _CardTopWidget{
      return PhysicalModel(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(topLeft: Radius.elliptical(5,5),topRight: Radius.elliptical(5,5)),
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shadowColor: Colors.grey,
     child: Container(
       height: 100,
       margin: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.only(topLeft: Radius.elliptical(5,5),topRight: Radius.elliptical(5,5)),
         gradient: LinearGradient(colors: [Color(0xFFF95E4C),Color(0xFFF98F44)],begin: FractionalOffset(0, 1), end: FractionalOffset(1, 0)),
       ),


          child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("酒店"),
                 Icon(Icons.local_hotel),
               ],
             ),
           ),
           //垂直分割线
           VerticalDivider(color: Colors.white,width: 0.5,),
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Text("海外酒店"),
                 Divider(height: 0.5,color: Colors.white,),
                 Text("海外酒店"),

               ],
             ),
           ),
           VerticalDivider(color: Colors.white,width: 0.5,),

           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Text("海外酒店"),
                 Divider(height: 0.5,color: Colors.white,),
                 Text("海外酒店"),

               ],
             ),
           ),
         ],
       ),
     ),
      );
  }
  Widget get _CardMiddleWidget{
      return PhysicalModel(
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shadowColor: Colors.grey,
     child: Container(
       height: 100,
       margin: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [Color(0xFF4286EA),Color(0xFF49B2EA)],begin: FractionalOffset(0, 1), end: FractionalOffset(1, 0)),
       ),


          child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: <Widget>[
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("酒店"),
                 Icon(Icons.local_hotel),
               ],
             ),
           ),
           //垂直分割线
           VerticalDivider(color: Colors.white,width: 0.5,),
           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Text("海外酒店"),
                 Divider(height: 0.5,color: Colors.white,),
                 Text("海外酒店"),

               ],
             ),
           ),
           VerticalDivider(color: Colors.white,width: 0.5,),

           Expanded(
             flex: 1,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: <Widget>[
                 Text("海外酒店"),
                 Divider(height: 0.5,color: Colors.white,),
                 Text("海外酒店"),

               ],
             ),
           ),
         ],
       ),
     ),
      );
  }
  Widget get _CardBottomWidget{
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(5,5),bottomRight: Radius.elliptical(5,5)),
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shadowColor: Colors.grey,
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(5,5),bottomRight: Radius.elliptical(5,5)),
          gradient: LinearGradient(colors: [Color(0xFF30BB9C),Color(0xFF5ECE5C)],begin: FractionalOffset(0, 1), end: FractionalOffset(1, 0)),
        ),


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("酒店"),
                  Icon(Icons.local_hotel),
                ],
              ),
            ),
            //垂直分割线
            VerticalDivider(color: Colors.white,width: 0.5,),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("海外酒店"),
                  Divider(height: 0.5,color: Colors.white,),
                  Text("海外酒店"),

                ],
              ),
            ),
            VerticalDivider(color: Colors.white,width: 0.5,),

            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("海外酒店"),
                  Divider(height: 0.5,color: Colors.white,),
                  Text("海外酒店"),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _gridViewCard{
    return PhysicalModel(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 5,
            children: <Widget>[
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
              _gridItem,
            ],
      ),
    );
  }
}


Widget get _gridItem{
  return Container(
    height: 80,
    child: Column(
      children: <Widget>[
        Icon(Icons.card_giftcard),
        Text("last"),
      ],
    ),
  );

}
Widget _item({IconData icon, String title}) {

  return Row(
   children: <Widget>[
     Expanded(
       flex: 1,
       child: Column(
         children: <Widget>[
           Icon(icon),
           Text(title)
         ],
       ),
     ),
   ],
  );
}


Widget get _cardItem{
  return  Expanded(
    flex: 1,
    child: GestureDetector(
      onTap: () {
      },
      child: Column(
        children: <Widget>[
          CachedImage(
            imageUrl: "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=774583426,3273578864&fm=26&gp=0.jpg",
            width: 18,
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text("测试测试", style: TextStyle(fontSize: 12)),
          )
        ],
      ),
    ),
  );
}
