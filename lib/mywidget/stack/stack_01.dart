import 'package:flutter/material.dart';

//当child为空的时候，会产生一个宽为left+right，高为top+bottom的区域；
class Stack01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,

          child: Stack(
            alignment: const Alignment(0.6, 0.6),
            textDirection:TextDirection.rtl,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/pic.jpg'),
                radius: 100.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                child: Text(
                  'Mia B',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              Text("测试文本的方向"),
            ],
          )),
    );
  }
}
