import 'package:flutter/material.dart';

import 'message.dart';

class Channel{
  late String name;
  late String urlImg;
  late List<Message> messages;

  Channel({required this.name,required this.urlImg,required this.messages});
}