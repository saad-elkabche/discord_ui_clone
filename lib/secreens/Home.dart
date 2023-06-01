import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../data/channel.dart';
import '../data/message.dart';
import '../data/populater.dart';
import '../widgets/channel_title.dart';
import '../widgets/drawer.dart';
import '../widgets/menu_icon.dart';
import '../widgets/message_sender.dart';
import '../widgets/messagesWidget.dart';


class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  double? Xrelease;
  double? toX;
  bool isOpen=false;
  late int _currentServer;
  late int _currentChannel;
  late AnimationController _controller;

  @override
  void initState() {
    _controller=AnimationController(vsync: this,duration: const Duration(milliseconds: 500),reverseDuration: const Duration(milliseconds: 500));
    _controller.addListener(onAnimationUpdate);

    if(servers !=null){
      _currentServer=0;
      _currentChannel=0;
    }
    else{
      populateData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyDrawer(currentServer: _currentServer,currentChannel: _currentChannel,onChannelTap: onChannelSelected,onServerTap: onServerSelected,),
        _home
      ],
    );
  }

  Widget get _home{
    double part=MediaQuery.of(context).size.width/13;
    toX =(part*11)+10;

    return GestureDetector(
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      child: Transform.translate(
        offset: Offset(toX!*_controller.value,0),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: backGColor,
              leading: MenuIcon(nbNotification:Random().nextInt(80)+5,onTap: onMenuTap),
              title: ChannelHeader(channel: servers![_currentServer].channels[_currentChannel]),
              actions:const [
                Icon(Icons.search),
                SizedBox(width: 25,),
                Icon(Icons.supervised_user_circle),
                SizedBox(width: 10,),
              ],
            ),
            backgroundColor: lightBackGColor,
            body:Column(
              children: [
                Expanded(
                  child:  MessagesBody(
                    messages: servers![_currentServer].channels[_currentChannel].messages,
                  ),
                ),
                MessageSender(onSend: sendMessage,)
              ],
            )
        ),
      ),
    );
  }

  void _onDragUpdate(DragUpdateDetails details){
    print(details.delta.dx);

    Xrelease=details.globalPosition.dx;
    _controller.value=Xrelease!/toX!;

  }

  void _onDragEnd(DragEndDetails details){
    if(Xrelease!>(toX!/2)){
      _controller.forward(from: _controller.value);
      isOpen=true;
    }else{
      _controller.reverse(from: _controller.value);
      isOpen=false;
    }
  }

  void sendMessage(String message){
    setState(() {
      servers![_currentServer].channels[_currentChannel].messages.add(Message(sender: me,content: message,messageTime: DateTime.now()));
    });
  }
  void onServerSelected(int index){
    setState(() {
      _currentServer=index;
      _currentChannel=0;
    });
  }
  void onChannelSelected(int index){
    setState(() {
      _currentChannel=index;
    });
  }

  void onMenuTap(){
    print("menuTapped");
    if(isOpen){
      _controller.reverse();
      isOpen=false;
    }
    else{
      _controller.forward();
      isOpen=true;
    }
  }
  void onAnimationUpdate(){
    setState(() {

    });
  }


}
