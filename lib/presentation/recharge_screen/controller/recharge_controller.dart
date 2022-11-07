import '/core/app_export.dart';
import 'package:yasan_s_application1/presentation/recharge_screen/models/recharge_model.dart';
import 'package:flutter/material.dart';

class RechargeController extends GetxController {
  TextEditingController priceOneController = TextEditingController();

  TextEditingController groupSeventeenController = TextEditingController();

  TextEditingController groupFifteenController = TextEditingController();

  Rx<RechargeModel> rechargeModelObj = RechargeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    priceOneController.dispose();
    groupSeventeenController.dispose();
    groupFifteenController.dispose();
  }
}
