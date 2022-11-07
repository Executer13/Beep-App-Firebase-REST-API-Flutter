import '../reset_password_arabic_screen/widgets/listeye1_item_widget.dart';
import 'controller/reset_password_arabic_controller.dart';
import 'models/listeye1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';

class ResetPasswordArabicScreen
    extends GetWidget<ResetPasswordArabicController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigo500,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 24,
                          top: 24,
                          right: 24,
                        ),
                        child: Container(
                          decoration: AppDecoration.fillLightgreen600.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder6,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowright,
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
                                  left: 119,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgArrowleft,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                          top: 2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 13,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgFrame6,
                                height: getVerticalSize(
                                  102.00,
                                ),
                                width: getHorizontalSize(
                                  142.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 88,
                                bottom: 35,
                              ),
                              child: CommonImageView(
                                imagePath:
                                    ImageConstant.imgGroup30WhiteA70080X60,
                                height: getVerticalSize(
                                  80.00,
                                ),
                                width: getHorizontalSize(
                                  60.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getVerticalSize(
                            258.00,
                          ),
                          width: getHorizontalSize(
                            408.00,
                          ),
                          margin: getMargin(
                            top: 18,
                            right: 22,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 22,
                                    top: 18,
                                    right: 22,
                                    bottom: 18,
                                  ),
                                  child: Text(
                                    "lbl_old_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsSemiBold16Bluegray200,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  margin: getMargin(
                                    left: 20,
                                    top: 68,
                                    right: 20,
                                    bottom: 68,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_change".tr,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              24,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "lbl_password".tr,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              24,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    top: 13,
                                    bottom: 13,
                                  ),
                                  color: ColorConstant.lightGreen600,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderLR200,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      199.00,
                                    ),
                                    width: getHorizontalSize(
                                      408.00,
                                    ),
                                    decoration: AppDecoration.fillLightgreen600
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderLR200,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 16,
                                              right: 10,
                                              bottom: 16,
                                            ),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(
                                                  getHorizontalSize(
                                                    200.00,
                                                  ),
                                                ),
                                                bottomRight: Radius.circular(
                                                  getHorizontalSize(
                                                    200.00,
                                                  ),
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorWhiteA700,
                                                height: getVerticalSize(
                                                  167.00,
                                                ),
                                                width: getHorizontalSize(
                                                  391.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 38,
                                    top: 19,
                                    right: 38,
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getSize(
                                      43.00,
                                    ),
                                    width: getSize(
                                      43.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 56,
                                    right: 56,
                                    bottom: 10,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgLocation,
                                    height: getSize(
                                      27.00,
                                    ),
                                    width: getSize(
                                      27.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 122,
                                    top: 10,
                                    right: 122,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgGroup46,
                                    height: getVerticalSize(
                                      186.00,
                                    ),
                                    width: getHorizontalSize(
                                      149.00,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 32,
                          right: 20,
                        ),
                        child: Text(
                          "msg10".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtNotoKufiArabicBold24WhiteA700,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          361.00,
                        ),
                        margin: getMargin(
                          left: 21,
                          top: 17,
                          right: 21,
                        ),
                        child: Text(
                          "msg11".tr,
                          maxLines: null,
                          textAlign: TextAlign.right,
                          style: AppStyle.txtAdobeArabicRegular24.copyWith(
                            letterSpacing: 0.24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 10,
                            top: 25,
                            right: 10,
                          ),
                          child: Obx(
                            () => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.resetPasswordArabicModelObj
                                  .value.listeye1ItemList.length,
                              itemBuilder: (context, index) {
                                Listeye1ItemModel model = controller
                                    .resetPasswordArabicModelObj
                                    .value
                                    .listeye1ItemList[index];
                                return Listeye1ItemWidget(
                                  model,
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      CustomButton(
                        width: 410,
                        text: "lbl17".tr,
                        margin: getMargin(
                          left: 10,
                          top: 25,
                          right: 10,
                          bottom: 20,
                        ),
                        fontStyle: ButtonFontStyle.NotoKufiArabicBold16,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
