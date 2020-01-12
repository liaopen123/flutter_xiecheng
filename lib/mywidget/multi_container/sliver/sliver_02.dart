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

class Sliver02 extends StatefulWidget {
  _Sliver02 createState() => _Sliver02();
}

class _Sliver02 extends State<Sliver02> {
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
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Radio(
                      value: float,
                      groupValue: appBarGroup,
                      onChanged: (value) {
                        appBarGroup = value;
                        setState(() {
                          isFloat= true;
                          isSnap = false;
                          isPinned = false;
                        });
                      }),
                  Text(float),
                  Radio(
                      value: snap,
                      groupValue: appBarGroup,
                      onChanged: (value) {
                        appBarGroup = value;
                        setState(() {
                          isFloat= true;
                          isSnap = true;
                          isPinned = false;
                        });
                      }),
                  Text(snap),
                  Radio(
                      value: pinned,
                      groupValue: appBarGroup,
                      onChanged: (value) {
                        appBarGroup = value;
                        setState(() {
                          isFloat= false;
                          isSnap = false;
                          isPinned = true;
                        });
                      }),
                  Text(pinned),
                ],
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
