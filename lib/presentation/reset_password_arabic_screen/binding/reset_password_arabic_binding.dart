import '../controller/reset_password_arabic_controller.dart';
import 'package:get/get.dart';

class ResetPasswordArabicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordArabicController());
  }
}
