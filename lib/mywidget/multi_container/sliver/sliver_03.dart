
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
  Colors.teal,
  Colors.deepPurpleAccent,
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
  Colors.teal,
  Colors.deepPurpleAccent
];

const String float = "float";
const String snap = "snap";
const String pinned = "pinned";

class Sliver03 extends StatefulWidget {
  _Sliver03 createState() => _Sliver03();
}

class _Sliver03 extends State<Sliver03> {
  bool isFloat = true;
  bool isSnap = false;
  bool isPinned = false;
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
            SliverAppBar(
              title: Text("伸缩头部"),
              expandedHeight: 200,//展开时的高度
              backgroundColor: Theme.of(context).accentColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'http://k.zol-img.com.cn/sjbbs/7692/a7691515_s.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              floating: isFloat,
              snap: isSnap,
              pinned: isPinned,
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
