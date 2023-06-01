import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/server.dart';


class ServerItem extends StatelessWidget {
  late Server server;
  late bool isSelected;
  late int index;
  ValueChanged<int>? onTap;

  ServerItem({required this.server,required this.index,required this.isSelected, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> onTap?.call(index),
      child:LayoutBuilder(builder: (context,constraint){
        return   Padding(
          padding:const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _selectedIndicator(constraint.maxWidth),
              _serverItem(constraint.maxWidth)
            ],
          ),
        );
      }
      )
    );
  }

  Widget  _selectedIndicator(double width){
    return isSelected?Container(
      width: 8,
      height:width/2 ,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: whiteColor
      ),
    ):Container(
      height: 7,
      width: 7,
      margin:const EdgeInsets.symmetric(horizontal: 5),
      decoration:const BoxDecoration(
        color:whiteColor,
        shape: BoxShape.circle
      ),
    );
  }
  Widget  _serverItem (double width){
    return CircleAvatar(
      backgroundImage: NetworkImage(server.imgUrl),
      radius:(width/3),
    );
  }
}
