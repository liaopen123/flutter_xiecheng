import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/model/TabBean.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/discovery/discovery_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/entertainment/entertainment_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/follow/follow_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/recommand/recommand_page.dart';
import 'package:flutter_xiecheng/mywidget/apps/app3douyu/yuba/yuba_page.dart';


class HomePage extends StatefulWidget{


  _HomePageState createState() =>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  PageController pageController  = PageController();

  int _currentIndex= 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    List<BottomNavigationBarItem> bottoms = List();
    List<TabBean> tabs = List();
    List<String> titles = ['推荐',"娱乐","关注","鱼吧","发现"];
print("notifynotifynotifynotifynotifynotifynotify");

    for (int i=0;i<5;i++) {
      tabs.add( TabBean(titles[i],_currentIndex==i,"assets/images/nav/nav-${i+1}2.jpg","assets/images/nav/nav-${i+1}1.jpg"));
    }



    for(TabBean tab in tabs){
      bottoms.add(BottomNavigationBarItem(icon: tab.currentWidget,title: tab.tabText),);

    }



    return Scaffold(

      body: PageView(
        controller: pageController,
        onPageChanged: (index){
          setState(() {
          _currentIndex = index;
          });

        },
        children: <Widget>[
          RecommandPage(),
          EntertainmentPage(),
          FollowPage(),
          YuBaPage(),
          DiscoveryPage(),



        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottoms,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            pageController.jumpToPage(index);
          });

        },

      ),
    );
  }




}