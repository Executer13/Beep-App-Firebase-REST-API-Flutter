import 'package:yasan_s_application1/presentation/splash_screen/models/splash_model.dart';

import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
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
                              child: Padding(
                                  padding: getPadding(bottom: 20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 168,
                                                    top: 59,
                                                    right: 168),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgUser,
                                                    height: getSize(41.00),
                                                    width: getSize(41.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 39,
                                                    top: 93,
                                                    right: 39),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup30,
                                                    height: getSize(63.00),
                                                    width: getSize(63.00)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 99,
                                                    top: 154,
                                                    right: 99),
                                                child: InkWell(
                                                    onTap: () {
                                                      onTapImgGroupOne();
                                                    },
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgGroup1,
                                                        height: getVerticalSize(
                                                            111.00),
                                                        width:
                                                            getHorizontalSize(
                                                                210.00))))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: getVerticalSize(378.00),
                                                width:
                                                    getHorizontalSize(407.00),
                                                margin: getMargin(
                                                    left: 10, top: 206),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 10),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse9,
                                                                  height:
                                                                      getVerticalSize(
                                                                          378.00),
                                                                  width: getHorizontalSize(
                                                                      341.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 38,
                                                                      right: 10,
                                                                      bottom:
                                                                          38),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgGroup28,
                                                                  height: getSize(
                                                                      145.00),
                                                                  width: getSize(
                                                                      145.00)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 66,
                                                                      right: 20,
                                                                      bottom:
                                                                          66),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgBrightness,
                                                                  height:
                                                                      getSize(
                                                                          78.00),
                                                                  width: getSize(
                                                                      78.00))))
                                                    ])))
                                      ])))))
                ])));
  }

  onTapImgGroupOne() {
    SplashModel().VerifyCheck();
  }
}
