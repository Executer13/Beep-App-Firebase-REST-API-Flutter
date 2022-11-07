import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:yasan_s_application1/core/utils/userCheck.dart';
import 'package:yasan_s_application1/routes/app_routes.dart';

class SplashModel {


  final FirebaseAuth _auth = FirebaseAuth.instance;

 VerifyCheck(){



 if (_auth.currentUser == null) {
      Get.toNamed(AppRoutes.languageScreen);
    } else {
      Get.toNamed(AppRoutes.navbarScreen);
    }

 }


}
