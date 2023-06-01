import 'package:flutter/material.dart';
import 'constants.dart';
import 'data/populater.dart';
import 'secreens/Home.dart';
import 'widgets/drawer.dart';

void main(){
populateData();
  runApp(myApp());
}


class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: foreGColor,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: foreGColor
        )
      ),
      title: 'descord clone',
      home: Home(),
    );
  }
}
