import 'package:flutter/material.dart';

const width = 80.0;
const height = 60.0;
const Map<int,TableColumnWidth> widths  = {
  0:FixedColumnWidth(100),
  1:FixedColumnWidth(150),
  2:FixedColumnWidth(50),
};
class Table01 extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flow 较为复杂，一般使用wrap"),),
      body: Container(
        child:Table(
          columnWidths: widths,
          border: TableBorder(top: BorderSide(color: Colors.red,width: 1,style: BorderStyle.solid)),
//          textDirection: TextDirection.rtl,
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,//垂直方向的分布
          children: [
            TableRow(
              children: [Text("姓名"),Text("职业"),Text("年龄")],
            ),
            TableRow(
              children: [Text("廖鹏辉"),Text("开发"),Text("24")],
            ),
            TableRow(
              children: [Text("雪糕"),Text("？"),Text("22")],
            ),
          ],
        ),
      ),
    );
  }

}

