import '../controller/home_arabic_controller.dart';
import 'package:get/get.dart';

class HomeArabicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeArabicController());
  }
}
