import 'package:flutter/material.dart';
import 'package:flutter_xiecheng/mywidget/apps/todoapp/add_todo_page.dart';

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
          Hero(
            tag: 'more0',
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.more_vert,
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
      //首页和详情页面第一个Container没有用  只是用于hero动画使用的，hero动画不允许嵌套hero，所以通过stack进行层叠。
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "container0",
            child: Container(
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: headPaddingLeftRight, right: headPaddingLeftRight),
            color: Colors.white,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Hero(
                    tag: 'head0',
                    child: Container(
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
                  ),
                  Hero(
                    tag: 'tasknum0',
                    child: Material(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text(
                          "9 Tasks",
                          style: TextStyle(color: Colors.black45, fontSize: 16),
                        ),
                      ),
                      type: MaterialType.transparency,
                    ),
                  ),
                  Hero(
                    tag: "category0",
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text(
                        "Personal",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'progress0',
                    child: Material(
                      type: MaterialType.transparency,
                      child: Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: progressBar()),
                    ),
                  ),
                  Expanded(
                    child:         Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: ListView(
                        children: <Widget>[
                          todoItem("Today",["Meet Clients","Design Sprint","Icon Set Design for Mobile App","HTML/CSS Study"]),
                          todoItem("Tommorrow",["Meet Clients","Design Sprint","Icon Set Design for Mobile App","HTML/CSS Study"]),
                          todoItem("Other",["Meet Clients","Design Sprint","Icon Set Design for Mobile App","HTML/CSS Study"]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Hero(tag: "fb", child: RaisedButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context){
            return AddTodoPage();
          }));
        },
      )),
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

  todoItem(String title,List<String> contents) {
      List<Widget> widgets = List();
      widgets.add(Text(title,style: TextStyle(fontSize: 16,color: Colors.black45),),);


      contents.forEach((content){

        widgets.add( Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Checkbox(value: false, onChanged: (v){

        }),
          Text(content),
          ],
        ));
      });


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,


    );

  }
}
