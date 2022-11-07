import '/core/app_export.dart';
import 'package:yasan_s_application1/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupFiveController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
      TextEditingController nameController = TextEditingController();
            TextEditingController emailController = TextEditingController();
  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    
    nameController.dispose();
    phoneController.dispose();
    groupSixController.dispose();
    groupFiveController.dispose();
    emailController.dispose();
    super.onClose();
  }
}
