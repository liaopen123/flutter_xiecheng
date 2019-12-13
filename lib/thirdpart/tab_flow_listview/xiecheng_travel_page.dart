import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/constant/api.dart';
import 'package:flutter_xiecheng/model/tab_bean.dart';
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
  PageController _controller = new PageController();
  TabController _controller1 ;
@override
  void initState() {
  _controller1 = TabController(length:0, vsync: this);
  initData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("indicator and 瀑布流"),),
      body: Container(
        height: 400,
        child: Column(
          children: <Widget>[
            TabBar(
              controller: TabController(initialIndex: currentIndex,length: tabs?.length??0,vsync: this),
              labelStyle: TextStyle( //up to your taste
                  fontWeight: FontWeight.w700
              ),
              indicatorSize: TabBarIndicatorSize.label, //makes it better
              labelColor: Color(0xff1a73e8), //Google's sweet blue
              unselectedLabelColor: Color(0xff5f6368), //niceish grey
              isScrollable: true, //up to your taste
              indicator: MD2Indicator( //it begins here
                  indicatorHeight: 3,
                  indicatorColor: Color(0xff1a73e8),
                  indicatorSize: MD2IndicatorSize.normal //3 different modes tiny-normal-full
              ),
              tabs: tabs?.map((item){
                return Text(item.labelName);
              })?.toList(),
            ),
            Flexible(
              child:    TabBarView(
                  controller: _controller1,
                  children: tabs.map((Tabs tab) {
                return TravelTabPage(
                  travelUrl: tabBean.url,
                  params: tabBean.params,
                  groupChannelCode: tab.groupChannelCode,
                  type: tab.type,
                );
              }).toList()),),
          ],
        ),
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
      tabs = tabBean.tabs;
      tabs = tabBean.tabs;
      _controller1 = TabController(length:tabs.length, vsync: this);
    });
  }

  _getTabs(List<Tabs> tabs) {

  }





}

