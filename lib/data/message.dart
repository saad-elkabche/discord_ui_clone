import 'package:flutter/material.dart';

import 'sender.dart';


class Message{
  late Sender sender;
  late String content;
  late DateTime messageTime;

  Message({required this.sender,required this.content,required this.messageTime});
}