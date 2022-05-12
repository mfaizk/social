import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social/controller/binding/binding.dart';
import 'package:social/controller/theme_controller.dart';
import 'package:social/screens/Signup.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      theme: ThemeController().getCurrentThemeData(),
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

ThemeData darkthemeData = ThemeData(
  backgroundColor: Colors.white,
  textTheme: const TextTheme(
    headline5: TextStyle(
      color: Colors.white,
    ),
  ),
);
