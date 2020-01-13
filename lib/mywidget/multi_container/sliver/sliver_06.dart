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
  Colors.deepPurpleAccent,
  Colors.red,
  Colors.orange,
  Colors.green,
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
];

const String float = "float";
const String snap = "snap";
const String pinned = "pinned";

class Sliver06 extends StatefulWidget {
  _Sliver06 createState() => _Sliver06();
}

class _Sliver06 extends State<Sliver06> {
  bool isFloat = true;
  bool isSnap = false;
  bool isPinned = false;
  String appBarGroup = float;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: false,
              floating: true,
              delegate: LphSliverPersistentHeaderDelegate(
                child:
                Container(
                  height: 100,
                  color: Colors.white,
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("我是左边"),
                      Text("我是右边"),
                    ],
                  ),
                ),
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: LphSliverPersistentHeaderDelegate(
                child:
                Container(
                  height: 100,
                  color: Colors.white,
                  child:   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text("我是左边"),
                      Text("我是右边"),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: EdgeInsets.all(40),
                  alignment: Alignment.center,
                  color: colorList[index],
                  child: Text("$index"),
                ),
                childCount: colorList.length,
              ),
            ),



        SliverFillViewport(
            viewportFraction: 0.5,//半个屏幕的高度
            delegate: SliverChildBuilderDelegate((context,index){
         return Container(
           height: 4,
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            color: colorList[index],
            child: Text("$index"),
          );
        },
        childCount:    colorList.length,
        ))
          ],
        ),
      ),
    );
  }


}


class LphSliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate{

  final Widget child;

  LphSliverPersistentHeaderDelegate({@required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  double get maxExtent => 200;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

}
