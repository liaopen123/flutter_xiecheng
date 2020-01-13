import 'package:flutter/material.dart';

class RecommandPage extends StatefulWidget{
  _RecommandPageState createState()=>_RecommandPageState();
}

class _RecommandPageState extends State<RecommandPage>{
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: CustomScrollView(
      slivers: <Widget>[

        SliverPersistentHeader(
          pinned: false,
          floating: true,

          delegate: MyHeader(),

        ),  SliverPersistentHeader(
          pinned: true,
          floating: true,

          delegate: MyHeader2(),

        ),
        SliverFillRemaining(
          child: Center(child: Text("center"),),
        ),
      ],

      ),
    );
  }



}


class MyHeader extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.black,],begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1)),
      ),
      child: Column(
        children: <Widget>[
          //搜索框
         Padding(
           padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
         ),
          Container(
            decoration: BoxDecoration(
//              color: Colors.white,
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 40,
                  height: 40,
                  child:CircleAvatar(child: Image.asset("assets/images/default-avatar.webp",fit: BoxFit.fill,),),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color:Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search,color: Colors.white,),
                        Text("22222222222"),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child:Icon(Icons.message) ,
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child:Icon(Icons.message) ,
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  child:Icon(Icons.message) ,
                ),
              ],
            ),
          ),

        ],

      ),
    );
  }

  @override
  double get maxExtent => 80;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}
class MyHeader2 extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: new BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white,Colors.black,],begin: FractionalOffset(1, 0), end: FractionalOffset(0, 1)),
      ),
      child: Column(
        children: <Widget>[
          //搜索框
          Container(child: Text("233"),height: 30,color: Colors.yellow,),

        ],

      ),
    );
  }

  @override
  double get maxExtent => 30;

  @override
  double get minExtent => 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}