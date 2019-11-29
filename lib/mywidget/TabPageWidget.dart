import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/HomePage.dart';
import 'package:flutter_xiecheng/MinePage.dart';
import 'package:flutter_xiecheng/NewsPage.dart';
import 'package:flutter_xiecheng/SearchPage.dart';

class TabPageWidget extends StatefulWidget {

    @override
    _TabPageWidget createState() =>_TabPageWidget();
}
class _TabPageWidget extends State<TabPageWidget> {


  PageController _controller = new PageController();
  static int _currentIndex = 0;
  static Color _defaultColor = Colors.grey;
  static Color _selectedColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          NewsPage(),
          MinePage(),
        ],
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(items:bars,
      currentIndex: _currentIndex,
      onTap: (index){
        _controller.jumpToPage(index);
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,

      ),
    );
  }




  List<BottomNavigationBarItem> bars = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home,
      color: _defaultColor,
      ),
      activeIcon: Icon(Icons.home,
        color: _selectedColor,
      ),
      title: Text("首页",
      style: TextStyle(
        color: _currentIndex!=0?_defaultColor:_selectedColor,
      ),)
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search,
      color: _defaultColor,
      ),
      activeIcon: Icon(Icons.search,
        color: _selectedColor,
      ),
      title: Text("搜索",
      style: TextStyle(
        color: _currentIndex!=1?_defaultColor:_selectedColor,
      ),)
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.pages,
      color: _defaultColor,
      ),
      activeIcon: Icon(Icons.pages,
        color: _selectedColor,
      ),
      title: Text("新闻",
      style: TextStyle(
        color: _currentIndex!=2?_defaultColor:_selectedColor,
      ),)
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.verified_user,
      color: _defaultColor,
      ),
      activeIcon: Icon(Icons.verified_user,
        color: _selectedColor,
      ),
      title: Text("我的",
      style: TextStyle(
        color: _currentIndex!=3?_defaultColor:_selectedColor,
      ),)
    ),
  ];

}