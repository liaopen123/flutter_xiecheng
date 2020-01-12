import 'package:flutter/material.dart';

///CustomScrollView的子组件只能是Sliver系列，所以想将一个普通组件塞进CustomScrollView中，那么务必将该组件用SliverToBoxAdapter
///
final List<Color> colorList = [
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.teal,
  Colors.deepPurpleAccent
];
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
           SliverToBoxAdapter(
             child: Align(
               alignment: Alignment.center,
               child: Text("Title"),
             ),
           ),
           SliverToBoxAdapter(
             child: Align(
               alignment: Alignment.center,
               child: Text("两种不同的ListView的delegate:SliverChildListDelegate"),
             ),
           ),

           SliverList(
             delegate: SliverChildListDelegate(
                 <Widget>[
                   Container(
                     padding: EdgeInsets.all(40),
                     alignment: Alignment.center,
                     color: Colors.yellow,child: Text("111"),),
                   Container(
                     padding: EdgeInsets.all(40),
                     alignment: Alignment.center,
                     color: Colors.yellow,child: Text("222"),),
                   Container(
                     padding: EdgeInsets.all(40),
                     alignment: Alignment.center,
                     color: Colors.yellow,child: Text("333"),),
                 ]
             ),
           ),
           SliverToBoxAdapter(
             child: Align(
               alignment: Alignment.center,
               child: Text("两种不同的ListView的delegate:SliverChildBuildDelegate"),
             ),
           ),

           SliverList(
             delegate: SliverChildBuilderDelegate(
                   (context,index)=>Container(
                 padding: EdgeInsets.all(40),
                 alignment: Alignment.center,
                 color: colorList[index],child: Text("$index"),
               ),
               childCount: colorList.length,

             ),
           ),
           SliverToBoxAdapter(
             child: Align(
               alignment: Alignment.center,
               child: Text("item条目高度固定的ListView"),
             ),
           ),
           SliverFixedExtentList(
             delegate: SliverChildBuilderDelegate(
                   (context,index)=>Container(
                 padding: EdgeInsets.all(40),
                 alignment: Alignment.center,
                 color: colorList[index],child: Text("$index"),
               ),
               childCount: colorList.length,

             ),
             itemExtent: 200,
           ),



           SliverToBoxAdapter(
             child: Align(
               alignment: Alignment.center,
               child: Text("同理GrideView两种不同的ListView的delegate"),
             ),
           ),

        SliverGrid(

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,

        ),

        delegate: SliverChildListDelegate(
            <Widget>[
              Container(
                padding: EdgeInsets.all(40),
                alignment: Alignment.center,
                color: Colors.yellow,child: Text("111"),),
              Container(
                padding: EdgeInsets.all(40),
                alignment: Alignment.center,
                color: Colors.yellow,child: Text("222"),),
              Container(
                padding: EdgeInsets.all(40),
                alignment: Alignment.center,
                color: Colors.yellow,child: Text("333"),),
            ]
        ),
        ),
           SliverGrid(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
               crossAxisSpacing: 8.0,
               mainAxisSpacing: 8.0,
               childAspectRatio: 1.0,
             ),

             delegate: SliverChildBuilderDelegate(
                   (context,index)=>Container(
                 padding: EdgeInsets.all(40),
                 alignment: Alignment.center,
                 color: colorList[index],child: Text("$index"),
               ),
               childCount: colorList.length,

             ),
           ),

           SliverGrid.count(crossAxisCount: 3,
           children: <Widget>[
             Container(
               padding: EdgeInsets.all(40),
               alignment: Alignment.center,
               color: Colors.yellow,child: Text("111"),),
             Container(
               padding: EdgeInsets.all(40),
               alignment: Alignment.center,
               color: Colors.yellow,child: Text("222"),),
             Container(
               padding: EdgeInsets.all(40),
               alignment: Alignment.center,
               color: Colors.yellow,child: Text("333"),),

           ],)
//           SliverFixedExtentList(
//
//             delegate: SliverChildBuilderDelegate(
//                   (context, index) => Container(
//                     padding: EdgeInsets.all(40),
//                     alignment: Alignment.center,
//                     color: colorList[index],child: Text("$index"),),
//               childCount: colorList.length,
//             ),),
         ],
       ),
     ),

    );
  }

}
