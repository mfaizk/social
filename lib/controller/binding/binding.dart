import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get.dart';
import 'package:social/controller/theme_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    print("STarted");
    // Get.put<ThemeController>(ThemeController());
  }
}
