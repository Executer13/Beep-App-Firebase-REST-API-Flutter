import 'controller/otp_arabic_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:yasan_s_application1/widgets/custom_icon_button.dart';

class OtpArabicScreen extends GetWidget<OtpArabicController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.indigo500,
            body: Container(
                height: getVerticalSize(899.00),
                width: getHorizontalSize(430.00),
                child: Stack(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(left: 10, top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  top: 31, bottom: 13),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgFrame4,
                                                  height:
                                                      getVerticalSize(102.00),
                                                  width: getHorizontalSize(
                                                      142.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 43, top: 119),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getSize(27.00),
                                                  width: getSize(27.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 18, bottom: 30),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 34,
                                                        width: 33,
                                                        margin: getMargin(
                                                            left: 3, right: 10),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: CommonImageView(
                                                            imagePath: ImageConstant
                                                                .imgGroup30WhiteA70080X60,
                                                            height:
                                                                getVerticalSize(
                                                                    80.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    60.00)))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: getVerticalSize(318.00),
                                    width: getHorizontalSize(430.00),
                                    margin: getMargin(top: 14),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      top: 27,
                                                      right: 10,
                                                      bottom: 27),
                                                  color: ColorConstant
                                                      .lightGreen600,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderLR200),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          199.00),
                                                      width: getHorizontalSize(
                                                          408.00),
                                                      decoration: AppDecoration
                                                          .fillLightgreen600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderLR200),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        top: 16,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            16),
                                                                    child: ClipRRect(
                                                                        borderRadius: BorderRadius.only(
                                                                            topRight: Radius.circular(getHorizontalSize(
                                                                                200.00)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(
                                                                                200.00))),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgVectorWhiteA700,
                                                                            height: getVerticalSize(167.00),
                                                                            width: getHorizontalSize(391.00),
                                                                            fit: BoxFit.cover)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            167.00),
                                                                        width: getHorizontalSize(
                                                                            82.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                152,
                                                                            top:
                                                                                14,
                                                                            right:
                                                                                152,
                                                                            bottom:
                                                                                14),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomLeft,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgGroup167X82, height: getVerticalSize(167.00), width: getHorizontalSize(82.00))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(left: 3, top: 10, right: 10, bottom: 4),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                        Padding(padding: getPadding(left: 10), child: CommonImageView(svgPath: ImageConstant.imgQrcode, height: getVerticalSize(36.00), width: getHorizontalSize(28.00))),
                                                                                        Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 36, right: 2), child: CommonImageView(imagePath: ImageConstant.imgGroup9946X52, height: getVerticalSize(46.00), width: getHorizontalSize(52.00))))
                                                                                      ])))
                                                                            ])))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 38,
                                                      right: 38,
                                                      bottom: 10),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(43.00),
                                                      width: getSize(43.00)))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(274.00),
                                                  width:
                                                      getHorizontalSize(389.00),
                                                  margin: getMargin(
                                                      left: 10, top: 10),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgPngegg21274X389,
                                                                height:
                                                                    getVerticalSize(
                                                                        274.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        389.00))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 12,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            12),
                                                                child: Text(
                                                                    "lbl7".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtNotoKufiArabicBold24WhiteA700)))
                                                      ])))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    width: getHorizontalSize(314.00),
                                    margin:
                                        getMargin(left: 22, top: 11, right: 22),
                                    child: Text("msg4".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.right,
                                        style: AppStyle.txtAdobeArabicRegular24
                                            .copyWith(letterSpacing: 0.24)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin:
                                        getMargin(left: 10, top: 24, right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(6.00))),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomButton(
                                              width: 34,
                                              text: "lbl_01".tr,
                                              variant:
                                                  ButtonVariant.FillCyan400,
                                              padding:
                                                  ButtonPadding.PaddingAll7,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16),
                                          Padding(
                                              padding: getPadding(
                                                  left: 10, top: 9, bottom: 8),
                                              child: Text("lbl".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16Bluegray50
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.16))),
                                          CustomButton(
                                              width: 34,
                                              text: "lbl_00".tr,
                                              margin: getMargin(left: 8),
                                              variant:
                                                  ButtonVariant.FillCyan400,
                                              padding:
                                                  ButtonPadding.PaddingAll7,
                                              fontStyle: ButtonFontStyle
                                                  .PoppinsRegular16)
                                        ]))),
                            Padding(
                                padding:
                                    getPadding(left: 10, top: 32, right: 10),
                                child: Container(
                                    width: getHorizontalSize(390.00),
                                    height: getVerticalSize(56.00),
                                    child: Obx(() => PinCodeTextField(
                                        appContext: context,
                                        controller:
                                            controller.otpController.value,
                                        length: 5,
                                        obscureText: false,
                                        obscuringCharacter: '*',
                                        keyboardType: TextInputType.number,
                                        autoDismissKeyboard: true,
                                        enableActiveFill: true,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.digitsOnly
                                        ],
                                        onChanged: (value) {},
                                        textStyle: TextStyle(
                                            color: ColorConstant.bluegray50,
                                            fontSize: getFontSize(20),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400),
                                        pinTheme: PinTheme(
                                            fieldHeight:
                                                getHorizontalSize(56.00),
                                            fieldWidth:
                                                getHorizontalSize(68.00),
                                            shape: PinCodeFieldShape.box,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(8.00)),
                                            selectedFillColor:
                                                ColorConstant.indigo502,
                                            activeFillColor:
                                                ColorConstant.indigo502,
                                            inactiveFillColor:
                                                ColorConstant.indigo502,
                                            inactiveColor:
                                                ColorConstant.indigoA200,
                                            selectedColor:
                                                ColorConstant.indigoA200,
                                            activeColor:
                                                ColorConstant.indigoA200))))),
                            CustomButton(
                                width: 390,
                                text: "lbl8".tr,
                                margin: getMargin(left: 10, top: 25, right: 10),
                                padding: ButtonPadding.PaddingAll20,
                                fontStyle: ButtonFontStyle.NotoKufiArabicBold16,
                                onTap: onTapBtntf,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(
                                        left: 10,
                                        top: 27,
                                        right: 10,
                                        bottom: 20),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg6".tr,
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(24),
                                                  fontFamily: 'Adobe Arabic',
                                                  fontWeight: FontWeight.w400)),
                                          TextSpan(
                                              text: "lbl9".tr,
                                              style: TextStyle(
                                                  color: ColorConstant
                                                      .lightGreen600,
                                                  fontSize: getFontSize(24),
                                                  fontFamily: 'Adobe Arabic',
                                                  fontWeight: FontWeight.w700))
                                        ]),
                                        textAlign: TextAlign.left)))
                          ])))
                ]))));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.homeArabicScreen);
  }
}
