import 'package:flutter/material.dart';

import '../constants.dart';





class MessageSender extends StatefulWidget {
  ValueChanged<String>? onSend;


  MessageSender({Key? key,this.onSend}) : super(key: key);

  @override
  State<MessageSender> createState() => _MessageSenderState();
}

class _MessageSenderState extends State<MessageSender> {
  bool _haveText=false;
  String _textValue="";
  late TextEditingController _controller;


  @override
  void initState() {
    _controller=TextEditingController();
    super.initState();
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child:   _messageSender
    );
  }
  Widget get _messageSender{
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 0.5,color: backGColor,)),
        color: lightBackGColor
      ),
      child: Row(
        children: [
           _haveText?Container(): _plusIcon,
          _haveText?Container():_giftIcon,
          _messageField,
          _haveText?_sendButton:Container()
        ],
      ),
    );
  }

  Widget get _plusIcon{
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 37,
      width: 37,
      decoration: BoxDecoration(
          color: backGColor,
          shape: BoxShape.circle
      ),
      child: Icon(Icons.add,color: foreGColor),
    );
  }
  Widget get _giftIcon{
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 37,
      width: 37,

      decoration: BoxDecoration(
          color: backGColor,
          shape: BoxShape.circle
      ),
      child: Icon(Icons.wallet_giftcard_sharp,color: foreGColor,),
    );
  }
  Widget get _messageField{
    return Expanded(
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        height: 37,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backGColor,
          borderRadius:const BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          children: [
            _textField,
            Icon(Icons.emoji_emotions_sharp,color: foreGColor,)
          ],
        ),
      ),
    );
  }
  Widget get _textField{
    return Expanded(
      child: TextFormField(
        controller: _controller,
        onChanged:_onStringChanged,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
        decoration:  InputDecoration(
            border:InputBorder.none,
          hintText: 'Write message💬',
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: foreGColor)
        ),
      ),
    );
  }
  Widget get _sendButton{
    return GestureDetector(
      onTap: _senMessage,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 37,
        width: 37,
        decoration: const BoxDecoration(
          color: Colors.deepPurpleAccent,
          shape: BoxShape.circle
        ),
        child: const Icon(Icons.send,color: Colors.white,),
      ),
    );
  }

  void _onStringChanged(String value){
  setState(() {
    _haveText=value.isNotEmpty;
    _textValue=value;
  });
  }
  void _senMessage(){
    _controller.clear();
    widget.onSend!.call(_textValue);
    setState(() {
      _haveText=false;
    });
  }

}

