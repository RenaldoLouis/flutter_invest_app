import 'package:flutter/material.dart';
import 'package:testing_1/app/sign_in_page.dart';
import 'package:testing_1/app/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Time Tracker",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: mainPage(),
    );
  }
}
