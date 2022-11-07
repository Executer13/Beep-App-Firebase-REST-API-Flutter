import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavbarController extends GetxController{
var SelectedIndex = 0.obs;


  void setCurrentIndex(int? index) {

    
  SelectedIndex.value =index!;
  }


  
}



