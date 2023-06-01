import 'package:flutter/material.dart';


import '../constants.dart';
import '../data/message.dart';

class MessagesBody extends StatelessWidget {
  List<Message>? messages;
  
  
  MessagesBody({this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView(
      reverse: true,
      children: [
        for(int i=messages!.length-1;i>=0;i--)
          Container(
            padding:const EdgeInsets.symmetric(vertical: 17,horizontal: 4),
            color: messages![i].sender.username=='me'?Colors.grey[700]:null,
            child: Row(
              textDirection:messages![i].sender.username=='me'?TextDirection.rtl:TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(messages![i].sender.urlImg),
                ),
                const SizedBox(width: 17,),
                Expanded(
                  child: Column(
                    crossAxisAlignment:messages![i].sender.username=="me"? CrossAxisAlignment.end:CrossAxisAlignment.start,
                    children: [
                      Text.rich(

                          TextSpan(
                              text: "${messages![i].sender.username}  ",style: Theme.of(context).textTheme.titleMedium!.copyWith(color: whiteColor),
                            children: [
                              TextSpan(text:messages![i].messageTime.toString().substring(0,10),style: Theme.of(context).textTheme.titleSmall!.copyWith(color: foreGColor))
                            ]
                          ),
                      ),
                      const SizedBox(height: 7),
                      Text(messages![i].content,
                          textAlign:messages![i].sender.username=='me'? TextAlign.end:TextAlign.start,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: whiteColor),
                          maxLines: 4,
                          overflow: TextOverflow.fade
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}


