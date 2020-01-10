import 'package:flutter/material.dart';

///CustomScrollView的子组件只能是Sliver系列，所以想将一个普通组件塞进CustomScrollView中，那么务必将该组件用SliverToBoxAdapter
class Sliver01 extends StatefulWidget {
  _Sliver01 createState() =>_Sliver01();
}
class _Sliver01 extends State<Sliver01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(

       child: CustomScrollView(
         slivers: <Widget>[
           SliverAppBar(
             title: Text("伸缩头部"),
             expandedHeight: 200,
             backgroundColor: Theme.of(context).accentColor,
             flexibleSpace: FlexibleSpaceBar(
               background: Image.network('http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg', fit: BoxFit.cover,),
             ),
             floating: true,
             snap: false,
             pinned: true,
           ),

         ],
       ),
     ),

    );
  }

}
