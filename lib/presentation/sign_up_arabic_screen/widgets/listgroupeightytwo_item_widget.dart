import '../controller/sign_up_arabic_controller.dart';
import '../models/listgroupeightytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListgroupeightytwoItemWidget extends StatelessWidget {
  ListgroupeightytwoItemWidget(this.listgroupeightytwoItemModelObj);

  ListgroupeightytwoItemModel listgroupeightytwoItemModelObj;

  var controller = Get.find<SignUpArabicController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 3,
        top: 1.0,
        right: 2,
        bottom: 1.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 3,
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgGroup87,
              height: getSize(
                4.00,
              ),
              width: getSize(
                4.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 4,
              bottom: 5,
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgGroup87,
              height: getSize(
                2.00,
              ),
              width: getSize(
                2.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 6,
              top: 1,
            ),
            child: CommonImageView(
              imagePath: ImageConstant.imgGroup87,
              height: getSize(
                6.00,
              ),
              width: getSize(
                6.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
