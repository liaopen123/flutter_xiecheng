import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsynMain extends StatefulWidget {
  @override
  _AsynMainState createState() => _AsynMainState();
}

class _AsynMainState extends State<AsynMain> {
  List<String> datas;

  @override
  void initState() {
    super.initState();
_getListData().then((list){

  setState(() {
    datas = list;
  });

}).catchError((error){

});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: datas==null?Center(child: CircularProgressIndicator(),):ListView.builder(

            itemCount: datas.length,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.all(10),
                height: 50,
                color: Colors.grey,
                child: Text(datas[index]),
              );
            }),
      ),

    );
  }
}

Future<List<String>> _getListData() async{
  await Future.delayed(Duration(seconds: 2));
  return List<String>.generate(10, (index)=>"$index title");

}
