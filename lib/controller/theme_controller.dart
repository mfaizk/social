import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  // ThemeData themeData = darkthemeData;
  GetStorage getStorage = GetStorage();

  ThemeData getCurrentThemeData() {
    print("ThemeController");
    var brightness = SchedulerBinding.instance!.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (getStorage.read("theme") != null) {
      if (getStorage.read("theme") == 'dark') {
        return darkthemeData;
      }
      if (getStorage.read("theme") == 'light') {
        return lightthemeData;
      }
    } else {
      if (isDarkMode) {
        return darkthemeData;
      } else {
        return lightthemeData;
      }
    }
    return lightthemeData;
  }

  void changeThemeData(String theme) {
    if (theme == "dark") {
      Get.changeTheme(darkthemeData);
      getStorage.write("theme", "dark");
    }
    if (theme == "light") {
      Get.changeTheme(lightthemeData);
      getStorage.write("theme", "light");
    }
  }
}

ThemeData lightthemeData = ThemeData(
  backgroundColor: Colors.white,
  textTheme: const TextTheme(
    headline5: TextStyle(
      color: Colors.white,
    ),
  ),
);

ThemeData darkthemeData = ThemeData(
  backgroundColor: Colors.black,
  textTheme: const TextTheme(
    headline5: TextStyle(
      color: Colors.white,
    ),
  ),
);
