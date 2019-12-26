import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: <Widget>[
          _topWidget,
          _bottomWidget,
        ],
      ),
    );
  }


 Widget get _topWidget{
   return Container(
     child: Column(
       children: <Widget>[
         Text("你可以这样说",style: TextStyle(color: Color(0xFF999999),fontSize: 14.0),),
         Container(
           margin: EdgeInsets.only(top: 20),
           child: Column(
             children: _textItems,
           ),
         ),
       ],
     ),
   );
}


  Widget get _bottomWidget{
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Positioned(
        right: 0,
        bottom: 10,
       child: Text("哈哈哈"),
      ),
    );
  }


List<Widget> get _textItems{
    if(titles==null||titles.length<=0){
      return null;
    }else {
      List<Widget> items = List();
        titles.forEach((value){
          items.add(Text(value,style: TextStyle(fontSize: 10,color: Color(0xff999999)),));
        });
        return items;
    }

}


List<String> titles = ["故宫门票","北京一日游","迪斯尼乐园"];

}