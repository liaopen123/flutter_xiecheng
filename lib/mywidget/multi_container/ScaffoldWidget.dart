import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
//    bottomNavigationBars.add(BottomNavigationBarItem(icon:Icon(Icons.call_received),title: Text("首页")));
    return new MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(title: Text("scaffold应用大全"),automaticallyImplyLeading:true,flexibleSpace: Container(child: Text("tttttttttttt\ntttt\ntttttt\ntttt\ntttttt\ntttt\ntttttt"),),
            bottom: TabBar(
              isScrollable: true,
              tabs: items.map((item){
                return Tab(
                  text: item.title,
                  icon: Icon(item.icon),
                );
              }).toList(),
            ),
          ),
          drawer: Text("退出登录"),
          endDrawer: Text("知道了 你退吧"),

          body: TabBarView(

            children:items.map((item){
              return new Container(
                child: Center(
                    child: Text(item.title)
                ),
              );
            }).toList(),
          ),
        ),
      ),
      //automaticallyImplyLeading:控制返回键是否隐藏的  true就显示


    );
  }

}


class TabItem{
 final String title;
  final IconData icon;
  const TabItem({this.title,this.icon});
}



const List<TabItem>  items = const<TabItem>[
  const TabItem(title:"android",icon:Icons.android),
  const TabItem(title:"image",icon:Icons.image),
  const TabItem(title:"travel",icon:Icons.card_travel),
  const TabItem(title:"people",icon:Icons.people),
  const TabItem(title:"home",icon:Icons.home),
];