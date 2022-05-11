import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:social/screens/HomeScreen.dart';
import 'package:social/screens/Signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: themeData,
      // home: HomeScreen(
      //   key: key,
      // ),
      debugShowCheckedModeBanner: false,
      home: Signup(
        key: key,
      ),
    );
  }
}

ThemeData themeData = ThemeData(
  backgroundColor: Colors.white,
  textTheme: const TextTheme(
    headline5: TextStyle(
      color: Colors.white,
    ),
  ),
);
