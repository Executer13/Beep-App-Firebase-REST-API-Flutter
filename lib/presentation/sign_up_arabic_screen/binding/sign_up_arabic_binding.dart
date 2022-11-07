import '../controller/sign_up_arabic_controller.dart';
import 'package:get/get.dart';

class SignUpArabicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpArabicController());
  }
}
