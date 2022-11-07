import '../controller/login_arabic_controller.dart';
import 'package:get/get.dart';

class LoginArabicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginArabicController());
  }
}
