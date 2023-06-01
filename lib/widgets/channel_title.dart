import 'package:flutter/material.dart';
import '../constants.dart';
import '../data/channel.dart';




class ChannelHeader extends StatelessWidget {
  late Channel channel;

   ChannelHeader({required this.channel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("#",style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: foreGColor),),
        const SizedBox(width: 10,),
        CircleAvatar(
          radius: 17,
            backgroundImage: NetworkImage(channel.urlImg)
        ),
        const SizedBox(width: 10,),
        Text(channel.name,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: foreGColor),)
      ],
    );
  }
}
