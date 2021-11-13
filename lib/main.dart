import 'package:flutter/material.dart';
import 'package:housy_hunt/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xfff5f6f6),
        primaryColor: Color(0xff811b83),
        accentColor: Color(0xfffa5019),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xff100e34),
          ),
          bodyText1: TextStyle(
            color: Color(0xff100e34).withOpacity(0.5),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
