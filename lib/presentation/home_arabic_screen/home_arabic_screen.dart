import 'controller/home_arabic_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

class HomeArabicScreen extends GetWidget<HomeArabicController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.indigo500,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: size.width,
              margin: getMargin(
                top: 25,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: getPadding(
                  left: 14,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            118.00,
                          ),
                          margin: getMargin(
                            left: 7,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration:
                                    AppDecoration.fillLightgreen600.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 3,
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        "lbl18".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtAdobeArabicRegular24WhiteA700
                                            .copyWith(
                                          letterSpacing: 0.24,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 6,
                                        top: 7,
                                        bottom: 7,
                                      ),
                                      child: Text(
                                        "lbl_1284".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 5,
                                        right: 7,
                                        bottom: 5,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgVideocamera,
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
                              Container(
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                                margin: getMargin(
                                  top: 4,
                                  bottom: 6,
                                ),
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
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
                                    Align(
                                      alignment: Alignment.centerLeft,
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
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: getHorizontalSize(
                              123.00,
                            ),
                            margin: getMargin(
                              top: 4,
                              right: 2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getVerticalSize(
                                    59.00,
                                  ),
                                  width: getHorizontalSize(
                                    60.00,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getSize(
                                            38.00,
                                          ),
                                          width: getSize(
                                            38.00,
                                          ),
                                          margin: getMargin(
                                            left: 12,
                                            top: 11,
                                            right: 10,
                                            bottom: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                19.00,
                                              ),
                                            ),
                                            gradient: LinearGradient(
                                              begin: Alignment(
                                                0.47987144434013634,
                                                0.05041426521052661,
                                              ),
                                              end: Alignment(
                                                1.4453000282311002,
                                                0.05041426521052661,
                                              ),
                                              colors: [
                                                ColorConstant.limeA100,
                                                ColorConstant.amber400,
                                                ColorConstant.amber700,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 4,
                                            right: 5,
                                            bottom: 5,
                                          ),
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgTelevision,
                                            height: getSize(
                                              50.00,
                                            ),
                                            width: getSize(
                                              50.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: getVerticalSize(
                                            59.00,
                                          ),
                                          width: getHorizontalSize(
                                            60.00,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgTelevision59X60,
                                                  height: getVerticalSize(
                                                    59.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    60.00,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    right: 11,
                                                    bottom: 10,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgUser36X36,
                                                    height: getSize(
                                                      36.00,
                                                    ),
                                                    width: getSize(
                                                      36.00,
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
                                Container(
                                  height: getVerticalSize(
                                    45.00,
                                  ),
                                  width: getHorizontalSize(
                                    30.00,
                                  ),
                                  margin: getMargin(
                                    top: 11,
                                    bottom: 2,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 10,
                                            right: 10,
                                          ),
                                          child: Text(
                                            "lbl19".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtAdobeArabicRegular18
                                                .copyWith(
                                              letterSpacing: 0.18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "lbl_40".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsLight24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    30.00,
                                  ),
                                  width: getHorizontalSize(
                                    22.00,
                                  ),
                                  margin: getMargin(
                                    top: 11,
                                    bottom: 18,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 10,
                                          ),
                                          child: Text(
                                            "lbl_c".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsLight24,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          height: getSize(
                                            5.00,
                                          ),
                                          width: getSize(
                                            5.00,
                                          ),
                                          margin: getMargin(
                                            top: 3,
                                            right: 10,
                                            bottom: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                2.50,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.whiteA700,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        left: 149,
                        top: 4,
                        bottom: 17,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 5,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      46.00,
                                    ),
                                    width: getHorizontalSize(
                                      52.00,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 10,
                                              right: 1,
                                              bottom: 10,
                                            ),
                                            child: Text(
                                              "lbl2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAdobeArabicRegular24
                                                  .copyWith(
                                                letterSpacing: 0.24,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "lbl20".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtNotoKufiArabicBold16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    43.00,
                                  ),
                                  margin: getMargin(
                                    left: 9,
                                    top: 1,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "lbl19".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAdobeArabicRegular18
                                            .copyWith(
                                          letterSpacing: 0.18,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                          bottom: 2,
                                        ),
                                        child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgLocation13X13,
                                          height: getSize(
                                            13.00,
                                          ),
                                          width: getSize(
                                            13.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 5,
                              top: 7,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  34.50,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgEllipse18,
                                height: getSize(
                                  69.00,
                                ),
                                width: getSize(
                                  69.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                            margin: getMargin(
                              left: 106,
                              bottom: 52,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: getVerticalSize(
                    765.00,
                  ),
                  width: getHorizontalSize(
                    430.00,
                  ),
                  margin: getMargin(
                    top: 11,
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                            topRight: Radius.circular(
                              getHorizontalSize(
                                20.00,
                              ),
                            ),
                          ),
                          child: CommonImageView(
                            imagePath: ImageConstant.imgMap765X430,
                            height: getVerticalSize(
                              765.00,
                            ),
                            width: getHorizontalSize(
                              430.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            top: 10,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 21,
                                    right: 21,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgSearchLightGreen600,
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 15,
                                          top: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgStar,
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 187,
                                    top: 202,
                                    right: 187,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgQrcode,
                                    height: getVerticalSize(
                                      49.00,
                                    ),
                                    width: getHorizontalSize(
                                      38.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 21,
                                    top: 311,
                                    right: 21,
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgSettings34X34,
                                    height: getSize(
                                      34.00,
                                    ),
                                    width: getSize(
                                      34.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    111.00,
                                  ),
                                  width: getHorizontalSize(
                                    430.00,
                                  ),
                                  decoration: AppDecoration.fillIndigo500,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgRectangle45,
                                          height: getVerticalSize(
                                            111.00,
                                          ),
                                          width: getHorizontalSize(
                                            430.00,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 27,
                                            top: 19,
                                            right: 13,
                                            bottom: 16,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 22,
                                                  bottom: 1,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        104.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 8,
                                                        right: 10,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 4,
                                                              bottom: 4,
                                                            ),
                                                            child:
                                                                CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgUser20X18,
                                                              height:
                                                                  getVerticalSize(
                                                                20.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                18.00,
                                                              ),
                                                            ),
                                                          ),
                                                          CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCar4,
                                                            height: getSize(
                                                              28.00,
                                                            ),
                                                            width: getSize(
                                                              28.00,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                          122.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 7,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              "lbl21".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtNotoKufiArabicBold12,
                                                            ),
                                                            Text(
                                                              "lbl22".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtNotoKufiArabicBold12,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  76.00,
                                                ),
                                                width: getHorizontalSize(
                                                  64.00,
                                                ),
                                                margin: getMargin(
                                                  left: 34,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                        height: getSize(
                                                          56.00,
                                                        ),
                                                        width: getSize(
                                                          56.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 4,
                                                          top: 10,
                                                          right: 4,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .black9004c,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              28.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Container(
                                                        margin: getMargin(
                                                          bottom: 10,
                                                        ),
                                                        padding: getPadding(
                                                          left: 16,
                                                          top: 24,
                                                          right: 12,
                                                          bottom: 23,
                                                        ),
                                                        decoration: AppDecoration
                                                            .txtFillLightgreen600
                                                            .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder32,
                                                        ),
                                                        child: Text(
                                                          "lbl23".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtNotoKufiArabicBold16,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 37,
                                                  top: 21,
                                                  bottom: 1,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        114.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 11,
                                                        right: 8,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCalendar,
                                                            height: getSize(
                                                              28.00,
                                                            ),
                                                            width: getSize(
                                                              28.00,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 3,
                                                              bottom: 3,
                                                            ),
                                                            child:
                                                                CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgHome22X34,
                                                              height:
                                                                  getVerticalSize(
                                                                22.00,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                34.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                          133.00,
                                                        ),
                                                        margin: getMargin(
                                                          top: 8,
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 1,
                                                              ),
                                                              child: Text(
                                                                "lbl24".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNotoKufiArabicBold12,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                bottom: 5,
                                                              ),
                                                              child: Text(
                                                                "lbl25".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtNotoKufiArabicBold12WhiteA700,
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
                                      ),
                                    ],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
