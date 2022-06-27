import 'package:flutter/material.dart';
import 'package:mini_insta/my_home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'اینستاگرام',
      // theme: ThemeData(
      //   primaryIconTheme: IconThemeData(color: Colors.black),
      //   primaryTextTheme: TextTheme(bodyText1: TextStyle(color: Colors.black)),
      //   primaryColor: Colors.black,
      //   backgroundColor: Colors.white,
      // ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: MyHome(),
      ),
    );
  }
}

