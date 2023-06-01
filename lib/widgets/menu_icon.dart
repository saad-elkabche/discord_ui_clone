import 'package:flutter/material.dart';

import '../constants.dart';



class MenuIcon extends StatelessWidget {
  late int nbNotification;
   VoidCallback? onTap;
   MenuIcon({required this.nbNotification,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTap!.call(),
      child: Center(
        child: Stack(
          children: [
            Icon(Icons.menu,color:foreGColor,size: 30,),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration:const  BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
                child: Center(child: Text("$nbNotification",style: TextStyle(color: foreGColor),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
