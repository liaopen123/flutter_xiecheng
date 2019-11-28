import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget{
  String photo;
  VoidCallback onTap;
  double width;
  PhotoHero({Key key,this.photo,this.onTap,this.width}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: photo,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Image.network(photo,fit: BoxFit.contain,),
          ),
        ),
      ),


    );
  }


}


