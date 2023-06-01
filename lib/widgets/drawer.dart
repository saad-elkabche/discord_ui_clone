import 'package:flutter/material.dart';



import '../constants.dart';
import '../data/populater.dart';
import 'server_item.dart';

class MyDrawer extends StatelessWidget {
  late int currentServer;
  late int currentChannel;
  ValueChanged<int>? onServerTap;
  ValueChanged<int>? onChannelTap;

   MyDrawer({required this.currentServer,required this.currentChannel,this.onServerTap,this.onChannelTap}) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGColor,
        body: Row(
          children: [
            Expanded(
              flex: 3,
                child: _servers
            ),
            Expanded(
              flex: 8,
                child: _channels(context)
            ),
            Expanded(
                flex :2,
              child: Container(color: backGColor,)),
          ],
        ),
      ),
    );
  }
  Widget get _servers{
    return Align(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for(int i =0;i<servers!.length;i++)
              ServerItem(server: servers![i],index: i,isSelected: i==currentServer,onTap: onServerSelected,)
          ],
        ),
      ),
    );
  }
  Widget  _channels(BuildContext context){
    return Container(
      color: lightBackGColor,
      child: ListView(
        children: [
          imgHeader(context),
          for(int i=0;i<servers![currentServer].channels.length;i++)
            Container(
              color: i==currentChannel?backGColor:null,
              child: ListTile(
                tileColor: Colors.blue,
                onTap: ()=>onChannelSelected(i),
                leading: CircleAvatar(backgroundImage: NetworkImage(servers![currentServer].channels[i].urlImg),radius: 18,),
                title: Text(servers![currentServer].channels[i].name,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: foreGColor),),
              ),
            )
        ],
      ),
    );
  }

  Widget  imgHeader(BuildContext context){
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(servers![currentServer].header)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      child: Stack(
        children: [
          Positioned(
            left: 4,
              top: 4,
              child:Column(
                children: [
                  Text(servers![currentServer].name,style :Theme.of(context).textTheme.titleLarge!.copyWith(color: whiteColor)),
                  Container(
                    padding:const  EdgeInsets.symmetric(vertical: 2,horizontal: 3),
                    decoration: BoxDecoration(
                      color: lightBackGColor.withOpacity(0.6),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: [
                        Text("Public",style :Theme.of(context).textTheme.titleSmall!.copyWith(color: whiteColor)),
                        Icon(Icons.public,color: Colors.white)
                      ],
                    ),
                  )
                ],
              )
          ),
          Positioned(
            right: 5,
              top: 5,
              child: Icon(Icons.menu_sharp,color: Colors.white,)
          )
        ],
      ),
    );
  }


  void onServerSelected(int index){
   onServerTap?.call(index);
  }
  void onChannelSelected(int index){
    onChannelTap?.call(index);
  }

}

