import 'controller/login_arabic_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';

class LoginArabicScreen extends GetWidget<LoginArabicController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, -3.0616171314629196e-17),
                        end: Alignment(0.5, 0.9999999999999999),
                        colors: [
                      ColorConstant.indigo500,
                      ColorConstant.indigo501,
                      ColorConstant.indigo50000
                    ])),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(top: 20),
                          child: Padding(
                              padding: getPadding(right: 148),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(80.00),
                                        width: getHorizontalSize(60.00),
                                        margin: getMargin(bottom: 35),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgGroup30WhiteA70080X60,
                                                          height:
                                                              getVerticalSize(
                                                                  80.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  45.00)))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 4,
                                                          bottom: 10),
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapRowgrid();
                                                          },
                                                          child: Container(
                                                              decoration: AppDecoration
                                                                  .fillLightgreen600
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder6),
                                                              child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                5),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGrid,
                                                                            height: getSize(24.00),
                                                                            width: getSize(24.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                465,
                                                                            top:
                                                                                5,
                                                                            bottom:
                                                                                5),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgArrowleft,
                                                                            height: getSize(24.00),
                                                                            width: getSize(24.00)))
                                                                  ])))))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgFrame3,
                                            height: getVerticalSize(102.00),
                                            width: getHorizontalSize(142.00)))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(top: 2, bottom: 20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(251.00),
                                                width:
                                                    getHorizontalSize(430.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  top: 10,
                                                                  right: 10),
                                                              color: ColorConstant
                                                                  .lightGreen600,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderLR200),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          199.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          408.00),
                                                                  decoration: AppDecoration
                                                                      .fillLightgreen600
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .customBorderLR200),
                                                                  child: Stack(
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(padding: getPadding(top: 16, right: 10, bottom: 16), child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(200.00)), bottomRight: Radius.circular(getHorizontalSize(200.00))), child: CommonImageView(imagePath: ImageConstant.imgVectorWhiteA700, height: getVerticalSize(167.00), width: getHorizontalSize(391.00), fit: BoxFit.cover))))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      119.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      330.00),
                                                              margin: getMargin(
                                                                  left: 10,
                                                                  top: 36,
                                                                  bottom: 36),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgXmlid1119X330,
                                                                            height: getVerticalSize(119.00),
                                                                            width: getHorizontalSize(330.00))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 107,
                                                                                top: 35,
                                                                                right: 107,
                                                                                bottom: 35),
                                                                            child: CommonImageView(imagePath: ImageConstant.imgGroup99, height: getVerticalSize(36.00), width: getHorizontalSize(41.00))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10,
                                                                      top: 31,
                                                                      bottom:
                                                                          31),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroup48,
                                                                  height:
                                                                      getVerticalSize(
                                                                          11.00),
                                                                  width: getHorizontalSize(
                                                                      350.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 31,
                                                                      right: 31,
                                                                      bottom:
                                                                          10),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocation,
                                                                  height:
                                                                      getSize(
                                                                          43.00),
                                                                  width: getSize(
                                                                      43.00)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 139,
                                                                      top: 38,
                                                                      right:
                                                                          139,
                                                                      bottom:
                                                                          38),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocation,
                                                                  height:
                                                                      getSize(
                                                                          27.00),
                                                                  width: getSize(
                                                                      27.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 132,
                                                                      top: 26,
                                                                      right:
                                                                          132,
                                                                      bottom:
                                                                          26),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMap1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          34.00),
                                                                  width: getHorizontalSize(
                                                                      66.00)))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  4.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  88.00),
                                                          margin: getMargin(
                                                              left: 150,
                                                              top: 32,
                                                              right: 150,
                                                              bottom: 32),
                                                          decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                  begin: Alignment(
                                                                      0.5,
                                                                      -3.0616171314629196e-17),
                                                                  end: Alignment(0.5, 0.9999999999999999),
                                                                  colors: [
                                                                ColorConstant
                                                                    .gray507f,
                                                                ColorConstant
                                                                    .whiteA7007f
                                                              ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  4.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  78.00),
                                                          margin: getMargin(
                                                              left: 78,
                                                              top: 32,
                                                              right: 78,
                                                              bottom: 32),
                                                          decoration: BoxDecoration(
                                                              gradient: LinearGradient(
                                                                  begin: Alignment(
                                                                      0.5,
                                                                      -3.0616171314629196e-17),
                                                                  end: Alignment(0.5, 0.9999999999999999),
                                                                  colors: [
                                                                ColorConstant
                                                                    .gray507f,
                                                                ColorConstant
                                                                    .whiteA7007f
                                                              ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 23,
                                                                      top: 26,
                                                                      right: 23,
                                                                      bottom:
                                                                          26),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMap2,
                                                                  height:
                                                                      getVerticalSize(
                                                                          34.00),
                                                                  width: getHorizontalSize(
                                                                      66.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 172,
                                                                      top: 18,
                                                                      right:
                                                                          172,
                                                                      bottom:
                                                                          18),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup71,
                                                                  height:
                                                                      getVerticalSize(
                                                                          34.00),
                                                                  width: getHorizontalSize(
                                                                      51.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 178,
                                                                      top: 24,
                                                                      right:
                                                                          178,
                                                                      bottom:
                                                                          24),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup7622X41,
                                                                  height:
                                                                      getVerticalSize(
                                                                          22.00),
                                                                  width: getHorizontalSize(
                                                                      41.00))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 62,
                                                    right: 20),
                                                child: Text("msg".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtNotoKufiArabicBold24WhiteA700))),
                                        Container(
                                            margin: getMargin(
                                                left: 20, top: 32, right: 20),
                                            decoration: AppDecoration
                                                .outlineIndigoA200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 16, bottom: 16),
                                                      child: Text(
                                                          "lbl_966_0".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular16Bluegray50)),
                                                  Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin:
                                                          getMargin(left: 21),
                                                      color: ColorConstant
                                                          .lightGreen600,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL8),
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  56.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  58.00),
                                                          decoration: AppDecoration
                                                              .fillLightgreen600
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderTL8),
                                                          child: Stack(
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                17,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                17,
                                                                            bottom:
                                                                                16),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgMobile,
                                                                            height: getSize(24.00),
                                                                            width: getSize(24.00))))
                                                              ])))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                left: 20, top: 25, right: 20),
                                            decoration: AppDecoration
                                                .outlineIndigoA200
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder6),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20,
                                                          top: 16,
                                                          bottom: 16),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEye,
                                                          height:
                                                              getSize(24.00),
                                                          width:
                                                              getSize(24.00))),
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 24,
                                                                bottom: 23),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGroup47,
                                                                height:
                                                                    getVerticalSize(
                                                                        9.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        107.00))),
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin: getMargin(
                                                                left: 21),
                                                            color: ColorConstant
                                                                .lightGreen600,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .customBorderTL8),
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        56.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        58.00),
                                                                decoration: AppDecoration
                                                                    .fillLightgreen600
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL8),
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 17, top: 16, right: 17, bottom: 16),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgLock, height: getSize(24.00), width: getSize(24.00))))
                                                                    ])))
                                                      ])
                                                ])),
                                        CustomButton(
                                            width: 390,
                                            text: "lbl4".tr,
                                            margin: getMargin(
                                                left: 20, top: 25, right: 20),
                                            fontStyle: ButtonFontStyle
                                                .NotoKufiArabicBold16,
                                            onTap: onTapBtntf),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxttf();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 107,
                                                        top: 34,
                                                        right: 107),
                                                    child: Text("lbl5".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtAdobeArabicBold24)))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxttf1();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 20,
                                                    right: 20),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "lbl6".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      24),
                                                              fontFamily:
                                                                  'Adobe Arabic',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: "msg3".tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .lightGreen600,
                                                              fontSize:
                                                                  getFontSize(
                                                                      24),
                                                              fontFamily:
                                                                  'Adobe Arabic',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                    ]),
                                                    textAlign: TextAlign.left)))
                                      ]))))
                    ]))));
  }

  onTapRowgrid() {
    Get.toNamed(AppRoutes.homeArabicScreen);
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.otpArabicScreen);
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.resetPasswordArabicScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.signUpArabicScreen);
  }
}
