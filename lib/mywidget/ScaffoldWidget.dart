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
              tabs: <Widget>[
                Tab(
                  text: "出租车",
                  icon: Icon(Icons.local_taxi),
                ),    Tab(
                  text: "出租车",
                  icon: Icon(Icons.local_taxi),
                ),    Tab(
                  text: "出租车",
                  icon: Icon(Icons.local_taxi),
                ),    Tab(
                  text: "出租车",
                  icon: Icon(Icons.local_taxi),
                ),    Tab(
                  text: "出租车",
                  icon: Icon(Icons.local_taxi),
                ),
              ],
            ),
          ),
          drawer: Text("退出登录"),
          endDrawer: Text("知道了 你退吧"),

          body: TabBarView(
            children: <Widget>[
              new Container(
                child: Center(
                 child: Text("你好")
                ),
              ),
              new Container(
                child: Center(
                    child: Text("你好")
                ),
              ),
              new Container(
                child: Center(
                    child: Text("你好")
                ),
              ),
              new Container(
                child: Center(
                    child: Text("你好")
                ),
              ),
              new Container(
                child: Center(
                    child: Text("你好")
                ),
              ),


            ],
          ),
        ),
      ),
      //automaticallyImplyLeading:控制返回键是否隐藏的  true就显示


    );
  }


}