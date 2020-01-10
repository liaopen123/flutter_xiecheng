import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBean{

  Text tabText;
  Widget iconSelectedWidget;
  Widget iconNormalWidget;
  Widget currentWidget;

  TabBean(String tabName,  bool isSelected,String iconSelected, String iconNormal){
    tabText = Text(tabName,style: TextStyle(color: isSelected?Color(0xfffe8427):Colors.black),);
    iconSelectedWidget = _bottomIcon(iconSelected);
    iconNormalWidget = _bottomIcon(iconNormal);

    currentWidget = isSelected?iconSelectedWidget:iconNormalWidget;
  }


  Widget _bottomIcon(String path){
    return Padding(
      padding: (EdgeInsets.only(bottom: 4)),
      child: Image.asset(path,width: 25,height: 25,
        alignment: Alignment.center,),
    );

  }
}