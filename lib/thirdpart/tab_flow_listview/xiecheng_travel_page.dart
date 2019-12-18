import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/constant/api.dart';
import 'package:flutter_xiecheng/model/tab_bean.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/travel_pageview_widget.dart';
import 'package:flutter_xiecheng/thirdpart/tab_flow_listview/travel_tab_page.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

import '../../HomePage.dart';
import '../../MinePage.dart';
import '../../NewsPage.dart';
import '../../SearchPage.dart';

class XieChengTravelPage extends StatefulWidget{


  _XieChengTravelPage createState() => _XieChengTravelPage();
}

class _XieChengTravelPage extends State<XieChengTravelPage> with TickerProviderStateMixin{


  int currentIndex =0;
  TabBean tabBean = new TabBean();
  List<Tabs> tabs = new List();
  PageController _pageController = new PageController();
  TabController _controller1 ;
@override
  void initState() {
  _controller1 = TabController(length:0, vsync: this,initialIndex: currentIndex);
  initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("indicator and 瀑布流"),
      //indicator
      bottom: TabBar(
        isScrollable: true,
        controller: _controller1,
          tabs: tabs.map((item){
        return Text(item.labelName);
      }).toList()),),
      //ViewPage
      body: PageView(
        onPageChanged: (index){
     setState(() {
       currentIndex  = index;
     });
        },
        controller: _pageController,
        children: tabs.map((item){
         if(tabBean.params!=null){
           return TravelPageViewWidget(params: tabBean.params,);
         }else{
           return null;
         }
        }).toList(),
      ),
    );
  }

  void initData() {
  getTabBarData();
  }

  void getTabBarData() async{

    var response = await Dio().get(Api.URL_TARVEL_TAB);
        var tabBean = TabBean.fromJson(response.data);
    setState(() {
      this.tabBean = tabBean;
      tabs = tabBean.tabs;
      _controller1 = TabController(length:tabs.length, vsync: this);
    });
  }

  _getTabs(List<Tabs> tabs) {

  }





}

