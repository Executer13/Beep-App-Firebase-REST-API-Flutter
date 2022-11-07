import '../controller/cars_controller.dart';
import 'package:get/get.dart';

class CarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarsController());
  }
}
