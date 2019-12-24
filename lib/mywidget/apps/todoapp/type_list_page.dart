import 'package:flutter/material.dart';

class TypeListPage extends StatefulWidget {
  _TypeListPageState createState() => _TypeListPageState();
}

class _TypeListPageState extends State<TypeListPage> {
  double headPaddingLeftRight = 40;
  double MarginLeft = 50;
  double BORDERRADIUS = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black26,
          ),
        ),
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_vert,
              color: Colors.black26,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
            left: headPaddingLeftRight, right: headPaddingLeftRight),
        color: Colors.white,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
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
                padding: EdgeInsets.only(top: 20, bottom: 10),
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
          ),
        ),
      ),
    );
  }

  bottomCol() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[],
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
}
