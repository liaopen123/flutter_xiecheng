import 'package:flutter/material.dart';

class BackBgWidget extends StatefulWidget{
  @override
  _BackBgWidgetState createState() => _BackBgWidgetState();




}


class _BackBgWidgetState extends State<BackBgWidget>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff191f39),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,left: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.close,color: Colors.grey,),
              Padding(padding: EdgeInsets.only(left: 10),
              child: Text("Close Menu",style: TextStyle(color: Colors.grey,),),),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 80),
          child: Row(
            children: <Widget>[
              CircleAvatar(child: FlutterLogo(),),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Eric Wh1o",style: TextStyle(color: Colors.white)),
                    Padding(padding: EdgeInsets.only(bottom: 10),child: Text("Open DashBoard",style: TextStyle(color: Colors.white),),),
                  ],
                ),
              ),

            ],
          ),),
          getListItem("Service", ["Sell your house","Buy a home","Trade in your home"]),
          getListItem("Customer", ["FAQ","Reviews","Stories","Agents"]),
          getListItem("About", ["Company","Pricing","Blog",]),
        ],
      ),

    );
  }


  getListItem(String title,List<String> items){
    List<Widget> widgets = new List();
    widgets.add( titleText(title),);
    items.forEach((content){
      widgets.add(contentText(content));
    });
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  titleText(String title) {

    return
      Padding(
        padding: EdgeInsets.only(top: 40),
        child: Text(title,style: TextStyle(fontSize: 10,color: Colors.white),),
      );

  }
  contentText(String content) {
    return
    Padding(
        padding: EdgeInsets.only(top: 20),
      child: Text(content,style: TextStyle(fontSize: 14,color: Colors.white),),
    );
  }

}