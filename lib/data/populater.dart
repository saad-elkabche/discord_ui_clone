import 'dart:math';


import 'package:discord_ui_clone/data/sender.dart';

import 'channel.dart';
import 'message.dart';
import 'server.dart';





List<Server>? servers;
Sender me=Sender(username: "me", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-409935874-50-rvmxjsqqgkgcooyntdfrpenksmxdwpbd.jpeg");


void populateData(){
  //senders
  List<Sender> senders=[
    me,
    Sender(username: "jamel", urlImg: "https://qph.cf2.quoracdn.net/main-qimg-c69d0f3e1948a6dc0f4e432c4bf95d49"),
    Sender(username: "Rumon", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-2118989756-50-cbewpqasebtqpljvoqgucwlaabxsmmoo.jpeg"),
    Sender(username: "HaliMa", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1506411077-50-zqiuwftuichfzdfacuuawcsnbieewesq.jpeg"),
    Sender(username: "HaliMa", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-153612224-50-jihkaxorlbrusxnvvjhrqmbiygldjaqz.jpeg"),
    Sender(username: "Samdon", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-900644867-50-qekjackgtptpqzosueruypphmnyjsqpc.jpeg"),
    Sender(username: "Juliana", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-2005494465-50-jjvpwwfcjwvlppvimtuhqrtmlivnystx.jpeg"),
    Sender(username: "Sendov", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-392310475-50-jxbdueviwhagbfeeqmowzeibcxcmtmsa.jpeg"),
    Sender(username: "Heldon", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-3956898-50-kexdapottswzsopvziuqicisosudrfbd.jpeg"),
    Sender(username: "Neverton", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1155184-50-nxjuemypbvqvsfjqjthukshaszbqecmr.jpeg"),
    Sender(username: "Helton", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1890261-50-hoyckulktaloakyigurmyygglqgoyfjv.jpeg"),
    Sender(username: "Wiliam", urlImg: "https://qph.cf2.quoracdn.net/main-thumb-488027942-50-rtcxapfwjalzdcuxifjwieycqdlqytsr.jpeg"),
  ];

   
            //messages
            List<Message> messages1=[
              Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "The men's shoes for walking and standing all day without discomfort.", messageTime: DateTime(2022,12,15)),
              Message(sender:senders[0] , content: "Not just at high tech companies, but elsewhere as well.", messageTime: DateTime(2023,1,30)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "Try WebStorm. Develop with pleasure!", messageTime: DateTime(2023,3,15)),
              Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
            ];
  List<Message> messages2=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Try WebStorm. Develop with pleasure!", messageTime: DateTime(2023,3,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
  ];
  List<Message> messages3=[
   Message(sender:senders[Random().nextInt(senders.length)] , content: "Try WebStorm. Develop with pleasure!", messageTime: DateTime(2023,3,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
  ];
  List<Message> messages4=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
   ];
  List<Message> messages5=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
  ];
  List<Message> messages6=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "The men's shoes for walking and standing all day without discomfort.", messageTime: DateTime(2022,12,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Try WebStorm. Develop with pleasure!", messageTime: DateTime(2023,3,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),

    Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
  ];
  List<Message> messages7=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "The men's shoes for walking and standing all day without discomfort.", messageTime: DateTime(2022,12,15)),
    Message(sender:senders[0] , content: "Not just at high tech companies, but elsewhere as well.", messageTime: DateTime(2023,1,30)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "So what if I were to replace python with JavaScriptbut still using c++ ", messageTime: DateTime(2022,9,18)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Node JS is written in both languages, do you have a diagram about it ?, I would like the structure of Node JS architecture and their modules.", messageTime: DateTime(2022,10,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "A few decades ago, the same sort of people thought GNU Emacs was written in eLisp. It is.. except for the parts that do almost all the work, which are written in C. It was GNU Emacs that led to GCC, not the other way around. The difference between static and dynamic instruction count is a critical one.", messageTime: DateTime(2022,11,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "Try WebStorm. Develop with pleasure!", messageTime: DateTime(2023,3,15)),
    Message(sender:senders[Random().nextInt(senders.length)] , content: "If you’re looking for a free LMS the best option is TalentLMS. No credit card or payment information of any kind is required to set up your account. TalentLMS let", messageTime: DateTime(2023,4,15)),
  ];
  List<Message> messages8=[
    Message(sender:senders[Random().nextInt(senders.length)] , content: "People get similarly confused about Javascript (and Node) performance, not realizing it’s just scripting glue with most the work still being done in libraries written in C++", messageTime: DateTime(2022,9,15)),
    ];



            //channel
            List<Channel> channels1=[
  Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
  Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
  Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
  Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
  Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
  Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
  Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
  Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
              Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
              Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
              Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
              Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
              Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
              Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
              Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
              Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
              Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
              Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
              Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
              Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
              Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
              Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
              Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
              Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
              Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
              Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
              Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
              Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
              Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
              Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
              Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
              Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),

            ];

  List<Channel> channels2=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
    Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
    Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),

  ];

  List<Channel> channels3=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
    Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
    Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
    Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
    Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
  ];
  List<Channel> channels4=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
    Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
    Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
    Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
    Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
    Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
];

  List<Channel> channels5=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
];

  List<Channel> channels6=[
    Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),
    Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
    Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
    Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),

  ];

  List<Channel> channels7=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
    Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
    Channel(name: 'roles', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-228340-50-7tI33eET1iWoHXFYYLf7k5EaVrC9xK0S.jpeg", messages: messages4),

  ];

  List<Channel> channels8=[
    Channel(name: 'rules', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-1629649-50-anxlnnvmwsfonnkfxxfprkeqpgwzsopd.jpeg", messages: messages1),
    Channel(name: 'Generale', urlImg: "https://qph.cf2.quoracdn.net/main-qimg-3ea14a04c2a66afe5251ca5fb404bac6", messages: messages2),
    Channel(name: 'videos', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2144986-50-zycizndvmgrlpzgvmyqvpczrbshrsxcc.jpeg", messages: messages3),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),
 ];
  List<Channel> channels9=[
    Channel(name: 'memes', urlImg: "https://qsf.cf2.quoracdn.net/-4-ans_frontend_assets.images.tribes.defaults.space_icon_yellow.png-26-fe83a11d61dd4889.png", messages: messages5),
    Channel(name: 'community', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-1586911292-50-knlmzvwwljiakcmousdnsdxfbqebubww.jpeg", messages: messages6),
    Channel(name: 'flutter', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-2234649-50-xjsrwthheipcevfwtuahmmtetgmndixk.jpeg", messages: messages7),
    Channel(name: 'nodejs', urlImg: "https://qph.cf2.quoracdn.net/main-thumb-ti-4055950-50-dairqxagvphdxdfxteefmokrmfnwtwoh.jpeg", messages: messages8),

  ];

  servers=[
  Server(header: "https://cdn.discordapp.com/banners/968556705975795742/a_e9ee304fac7098c070435f78963c3662.webp", name: "6anaya", imgUrl:"https://cdn.discordapp.com/icons/766489635794583583/341ca96c9a8b381d39a5093957b9cda3.webp" , channels: channels1),
  Server(header: "https://cdn.discordapp.com/banners/961751592737067028/a_b6937615c2c04c1c1d2c8695c46d2b9e.webp", name: "jetBrain", imgUrl:"https://cdn.discordapp.com/icons/418809495246864385/a_d0248ca42870c6f6510641777f6d9ac6.webp" , channels: channels2),
  Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/347256295_195930096674934_2489840611895529374_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8631f5&_nc_ohc=SnYcBgGMQ4wAX-dPCgm&_nc_ht=scontent.frak1-1.fna&oh=00_AfB1fEY-TtIadPaTkPXoMa8QOB8EOpxKXUo2PJJHlM9RYg&oe=647BD824", name: "Quora", imgUrl:"https://cdn.discordapp.com/icons/724399123872088145/284133443d76495d49a0b51b1beaf036.webp" , channels: channels3),
  Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t1.6435-9/67049381_2344875235735810_9061540061438279680_n.png?_nc_cat=110&ccb=1-7&_nc_sid=8631f5&_nc_ohc=2MeuS_3zgUYAX96qApm&_nc_ht=scontent.frak1-2.fna&oh=00_AfDvVXkfEJNrUnlEsR0AIPsQCprGG7DVfAmTJ7DSPiNptw&oe=649F2017", name: "tradding", imgUrl:"https://cdn.discordapp.com/icons/662267976984297473/e75033be72087a87fa09e91727dac2a4.webp" , channels: channels4),
  Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/327180401_844988536602292_8769384428889632226_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=qYGBkSng2XkAX-6I_G3&_nc_ht=scontent.frak1-1.fna&oh=00_AfAJRYAg4tm_m72cdYqNp0cbMS-dXV_SrgVurzTVkTMoIA&oe=647C6FC2", name: "Ecommerce", imgUrl:"https://cdn.discordapp.com/icons/728638627264856155/845211abf48fa7f7e161166fbb9628d2.webp" , channels: channels5),
  Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t39.30808-6/243024074_4503585356369957_3685795393477302624_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8631f5&_nc_ohc=5vfZkPutx3sAX-vksE0&_nc_ht=scontent.frak1-2.fna&oh=00_AfAMr07gFs04jA1LkSg4s_jfq43ZMCyrDvR8g7_hTRbb1Q&oe=647BE81E", name: "flutter", imgUrl:"https://cdn.discordapp.com/icons/944826561125822515/3d445a689dfdb0710b8dd5da30e21409.webp" , channels: channels6),
  Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/227508795_137756118445467_7544383583666090329_n.jpg?stp=dst-jpg_p960x960&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=I9CHPapxXBEAX_mTlP6&_nc_ht=scontent.frak1-1.fna&oh=00_AfAi12tzAzdKTMiuovX_kl0ektfrWZKUMc_O65EZkx6M2A&oe=647C90BB", name: "Reddit", imgUrl:"https://cdn.discordapp.com/icons/359039577362530314/a_49f8ece3c9d579195e1c83aa8b0c2b99.webp" , channels: channels7),
    Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t39.30808-6/327548409_681129633804276_7418736878214456341_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=cnSpPc2K9HIAX8co5CN&_nc_ht=scontent.frak1-2.fna&oh=00_AfBAaoePvGass-ivJJzXfmJ6PQt_96wAMkog6yfwqec7Xg&oe=647C6520", name: "ChatGpt", imgUrl:"https://cdn.discordapp.com/icons/961751592737067028/512e9f57f3d6e2f55231c0a8c4523955.webp" , channels: channels8),
  Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/307553146_1323392318399872_5389731400502744834_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_ohc=-3Ntmwl2cnEAX8sC96Z&_nc_ht=scontent.frak1-1.fna&oh=00_AfASMrNKZjcPuGiuMvXaeT7k_lyrWbuwJH3IBn8rpiXArQ&oe=647CC805", name: "Midjourney", imgUrl:"https://cdn.discordapp.com/icons/968556705975795742/a_b74da7270eb05f3c7e4ca749f95d7396.webp" , channels: channels9),
    Server(header: "https://cdn.discordapp.com/banners/968556705975795742/a_e9ee304fac7098c070435f78963c3662.webp", name: "6anaya", imgUrl:"https://cdn.discordapp.com/icons/766489635794583583/341ca96c9a8b381d39a5093957b9cda3.webp" , channels: channels1),
    Server(header: "https://cdn.discordapp.com/banners/961751592737067028/a_b6937615c2c04c1c1d2c8695c46d2b9e.webp", name: "jetBrain", imgUrl:"https://cdn.discordapp.com/icons/418809495246864385/a_d0248ca42870c6f6510641777f6d9ac6.webp" , channels: channels2),
    Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/347256295_195930096674934_2489840611895529374_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8631f5&_nc_ohc=SnYcBgGMQ4wAX-dPCgm&_nc_ht=scontent.frak1-1.fna&oh=00_AfB1fEY-TtIadPaTkPXoMa8QOB8EOpxKXUo2PJJHlM9RYg&oe=647BD824", name: "Quora", imgUrl:"https://cdn.discordapp.com/icons/724399123872088145/284133443d76495d49a0b51b1beaf036.webp" , channels: channels3),
    Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t1.6435-9/67049381_2344875235735810_9061540061438279680_n.png?_nc_cat=110&ccb=1-7&_nc_sid=8631f5&_nc_ohc=2MeuS_3zgUYAX96qApm&_nc_ht=scontent.frak1-2.fna&oh=00_AfDvVXkfEJNrUnlEsR0AIPsQCprGG7DVfAmTJ7DSPiNptw&oe=649F2017", name: "tradding", imgUrl:"https://cdn.discordapp.com/icons/662267976984297473/e75033be72087a87fa09e91727dac2a4.webp" , channels: channels4),
    Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/327180401_844988536602292_8769384428889632226_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=e3f864&_nc_ohc=qYGBkSng2XkAX-6I_G3&_nc_ht=scontent.frak1-1.fna&oh=00_AfAJRYAg4tm_m72cdYqNp0cbMS-dXV_SrgVurzTVkTMoIA&oe=647C6FC2", name: "Ecommerce", imgUrl:"https://cdn.discordapp.com/icons/728638627264856155/845211abf48fa7f7e161166fbb9628d2.webp" , channels: channels5),
    Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t39.30808-6/243024074_4503585356369957_3685795393477302624_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=8631f5&_nc_ohc=5vfZkPutx3sAX-vksE0&_nc_ht=scontent.frak1-2.fna&oh=00_AfAMr07gFs04jA1LkSg4s_jfq43ZMCyrDvR8g7_hTRbb1Q&oe=647BE81E", name: "flutter", imgUrl:"https://cdn.discordapp.com/icons/944826561125822515/3d445a689dfdb0710b8dd5da30e21409.webp" , channels: channels6),
    Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/227508795_137756118445467_7544383583666090329_n.jpg?stp=dst-jpg_p960x960&_nc_cat=108&ccb=1-7&_nc_sid=e3f864&_nc_ohc=I9CHPapxXBEAX_mTlP6&_nc_ht=scontent.frak1-1.fna&oh=00_AfAi12tzAzdKTMiuovX_kl0ektfrWZKUMc_O65EZkx6M2A&oe=647C90BB", name: "Reddit", imgUrl:"https://cdn.discordapp.com/icons/359039577362530314/a_49f8ece3c9d579195e1c83aa8b0c2b99.webp" , channels: channels7),
    Server(header: "https://scontent.frak1-2.fna.fbcdn.net/v/t39.30808-6/327548409_681129633804276_7418736878214456341_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=e3f864&_nc_ohc=cnSpPc2K9HIAX8co5CN&_nc_ht=scontent.frak1-2.fna&oh=00_AfBAaoePvGass-ivJJzXfmJ6PQt_96wAMkog6yfwqec7Xg&oe=647C6520", name: "ChatGpt", imgUrl:"https://cdn.discordapp.com/icons/961751592737067028/512e9f57f3d6e2f55231c0a8c4523955.webp" , channels: channels8),
    Server(header: "https://scontent.frak1-1.fna.fbcdn.net/v/t39.30808-6/307553146_1323392318399872_5389731400502744834_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=e3f864&_nc_ohc=-3Ntmwl2cnEAX8sC96Z&_nc_ht=scontent.frak1-1.fna&oh=00_AfASMrNKZjcPuGiuMvXaeT7k_lyrWbuwJH3IBn8rpiXArQ&oe=647CC805", name: "Midjourney", imgUrl:"https://cdn.discordapp.com/icons/968556705975795742/a_b74da7270eb05f3c7e4ca749f95d7396.webp" , channels: channels9),

  ];


}