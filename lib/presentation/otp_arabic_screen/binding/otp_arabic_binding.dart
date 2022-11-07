import '../controller/otp_arabic_controller.dart';
import 'package:get/get.dart';

class OtpArabicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpArabicController());
  }
}
