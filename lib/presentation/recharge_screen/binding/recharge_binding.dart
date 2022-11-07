import '../controller/recharge_controller.dart';
import 'package:get/get.dart';

class RechargeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RechargeController());
  }
}
