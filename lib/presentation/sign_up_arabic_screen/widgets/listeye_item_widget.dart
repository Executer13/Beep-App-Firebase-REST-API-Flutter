import '../controller/sign_up_arabic_controller.dart';
import '../models/listeye_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListeyeItemWidget extends StatelessWidget {
  ListeyeItemWidget(this.listeyeItemModelObj);

  ListeyeItemModel listeyeItemModelObj;

  var controller = Get.find<SignUpArabicController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 12.5,
          bottom: 12.5,
        ),
        decoration: AppDecoration.outlineIndigoA200.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                left: 20,
                top: 16,
                bottom: 16,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgEye24X24,
                height: getSize(
                  24.00,
                ),
                width: getSize(
                  24.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 193,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 14,
                      bottom: 16,
                    ),
                    child: Text(
                      "lbl11".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAdobeArabicRegular24.copyWith(
                        letterSpacing: 0.24,
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(
                      left: 22,
                    ),
                    color: ColorConstant.lightGreen600,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.customBorderTL8,
                    ),
                    child: Container(
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: getHorizontalSize(
                        67.00,
                      ),
                      decoration: AppDecoration.fillLightgreen600.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL8,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 16,
                                right: 20,
                                bottom: 16,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgLock,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
