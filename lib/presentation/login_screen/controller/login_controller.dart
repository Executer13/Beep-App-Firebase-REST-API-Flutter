import '/core/app_export.dart';
import 'package:yasan_s_application1/presentation/login_screen/models/login_model.dart';

class LoginController extends GetxController {
  Rx<LoginModel> loginModelObj = LoginModel().obs;
Rx<bool> isShowPassword1 = false.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
