import 'package:flutter/material.dart';

const titles = {"My House", "Market", "Tools", "Neigbourhood"};

class FrontWidget extends StatefulWidget {
  @override
  _FrontWidgetState createState() => _FrontWidgetState();

  double cornerPercnet;
  Function shrinkAnimation;

  FrontWidget({this.cornerPercnet,this.shrinkAnimation});


}

class _FrontWidgetState extends State<FrontWidget>
    with TickerProviderStateMixin {
  var currentIndex = 0;
  TabController _tabBarController;

  @override
  void initState() {
    super.initState();
    _tabBarController = TabController(
        length: titles.length, vsync: this, initialIndex: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:     BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20*widget.cornerPercnet),
      ),

      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              GestureDetector(
                onTap: widget.shrinkAnimation,
                child:    Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu),
                ),
              ),

              Text(
                "Open Door",
                style: TextStyle(color: Color(0xff266ed5), fontSize: 22),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: FlutterLogo(),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Hello Eric",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w700, letterSpacing: 2),
            ),
          ),
          Container(
            color: Color(0xffeaf2f8),
            margin: EdgeInsets.only(top: 20,bottom: 20),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(
              "456 Connections Awe, Phonexin AZ",
              style: TextStyle(fontSize: 10, color: Color(0xff266ed5)),
            ),
          ),
          SizedBox(
            height: 40,
            child:  TabBar(
              isScrollable: true,
              tabs: titles.map((item) {
                return Text(
                  item,
                  style: TextStyle(color: Colors.green),
                );
              }).toList(),
              controller: _tabBarController,
            ),
          ),
        Expanded(
          flex: 1,
          child:   TabBarView(
            controller: _tabBarController,
            children: [
              _homeItemWidget(),
              _homeItemWidget(),
              _homeItemWidget(),
              _homeItemWidget(),

            ],),
        ),


        ],
      ),
    );
  }

  Container _homeItemWidget() {
    return Container(
              padding: EdgeInsets.all(40),
              child: Card(
                elevation: 50,
              ),
            );
  }


}
