import 'channel.dart';


class Server{
   late String header;
   late String name;
   late String imgUrl;
   late List<Channel> channels;

   Server({required this.header,required this.name,required this.imgUrl,required this.channels});
}