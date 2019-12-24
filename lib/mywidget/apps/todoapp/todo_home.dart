import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/apps/todoapp/type_list_page.dart';
import 'package:flutter_xiecheng/mywidget/otherwidget/Flow_01.dart';
import 'package:flutter_xiecheng/mywidget/router/customrouter.dart';
import 'package:toast/toast.dart';

const double MarginLeft = 50;
const double BORDERRADIUS = 50;

//66a8e5   536cdc
class TodoHomePage extends StatefulWidget {
  @override
  _TodoHomePageState createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage>
    with TickerProviderStateMixin {
  Color currentStartColor = Color(0xfff9b552);
  Color currentEndColor = Color(0xfff05d70);

  PageController pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      if (pageController.page.round() == 1) {
        changeBgColor();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> currentColor = [currentStartColor, currentEndColor];
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: currentColor,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft)),
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _titleBar(),
            _roundAvatar(),
            Padding(
              padding: EdgeInsets.only(left: MarginLeft, top: 40),
              child: Text(
                "Hello, Jane.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontFamily: 'NEWTEXT',
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: MarginLeft, top: 20),
              child: Text(
                "Looks like feel good. \nYou have 3 tasks todo today",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontFamily: 'NEWTEXT',
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: MarginLeft, top: 40, bottom: 20),
              child: Text(
                "TODAY | MAY 12,2017",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontFamily: 'NEWTEXT',
                  letterSpacing: 1,
                ),
              ),
            ),
            Expanded(
                child: PageView(
              controller: pageController,
              children: <Widget>[
                todoCard(),
                todoCard(),
                todoCard(),
              ],
            )),
          ],
        ),
      ),
    );
  }

  Widget _titleBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Icon(
            Icons.menu,
            color: Colors.white70,
          ),
        ),
        Text(
          "TODO",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.search,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }

  _roundAvatar() {
    return GestureDetector(
      onTap: () => {changeBgColor()},
      child: Container(
        margin: EdgeInsets.only(top: 60, left: MarginLeft),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0.0, 7.0), //阴影xy轴偏移量   这个值是 阴影 和使用上下左右的距离
                  blurRadius: 0.1, //阴影模糊程度
                  spreadRadius: 1.0 //阴影扩散程度0
                  )
            ]),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/fatcat.jpg'),
          radius: 25.0,
        ),
      ),
    );
  }

  todoCard() {
    double headPaddingLeftRight = 20;
    return GestureDetector(
      onVerticalDragEnd: (end) {
        Toast.show("跳转", context);
        Navigator.push(context, new CustomRouter(TypeListPage()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 85),
        child: Card(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(top: 10, left: headPaddingLeftRight),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(BORDERRADIUS),
                        border: Border.all(color: Colors.black12, width: 0.5),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Color(0xfff05d70),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10, right: headPaddingLeftRight),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.black26,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: headPaddingLeftRight,
                        right: headPaddingLeftRight,
                        bottom: 30),
                    child: bottomCol(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bottomCol() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "9 Tasks",
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
        ),
        Text(
          "Personal",
          style: TextStyle(fontSize: 35),
        ),
        Padding(padding: EdgeInsets.only(top: 25), child: progressBar()),
      ],
    );
  }

  progressBar() {
    double mwidth = 240;
    double mHeight = 5;
    return Row(
      children: <Widget>[
        Expanded(
          child: Stack(
            children: <Widget>[
              Container(
                width: mwidth,
                height: mHeight,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Container(
                width: mwidth,
                margin: EdgeInsets.only(right: 0),
                height: mHeight,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
        Text(
          "33%",
          style: TextStyle(color: Colors.black54),
        ),
      ],
    );
  }

  changeBgColor() {
    AnimationController startColorController = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    Animation startColorChangeAnimation =
        new ColorTween(begin: Color(0xfff9b552), end: Color(0xff66a8e5))
            .animate(startColorController);
    startColorChangeAnimation.addListener(() {
      setState(() {
        currentStartColor = startColorChangeAnimation.value;
      });
    });

    AnimationController endColorController = new AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    Animation endColorChangeAnimation =
        new ColorTween(begin: Color(0xfff05d70), end: Color(0xff536cdc))
            .animate(endColorController);
    endColorChangeAnimation.addListener(() {
      setState(() {
        currentEndColor = endColorChangeAnimation.value;
      });
    });

    startColorController.forward();
    endColorController.forward();
  }
}
