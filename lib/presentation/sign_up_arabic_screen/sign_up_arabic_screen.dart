import '../sign_up_arabic_screen/widgets/listeye_item_widget.dart';
import '../sign_up_arabic_screen/widgets/listgroupeightytwo_item_widget.dart';
import 'controller/sign_up_arabic_controller.dart';
import 'models/listeye_item_model.dart';
import 'models/listgroupeightytwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:yasan_s_application1/widgets/custom_icon_button.dart';

class SignUpArabicScreen extends GetWidget<SignUpArabicController> {
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
                                CustomIconButton(
                                    height: 34,
                                    width: 34,
                                    margin:
                                        getMargin(left: 24, top: 24, right: 24),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowright)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(top: 15, right: 148),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 17, bottom: 5),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroup30WhiteA70080X60,
                                                      height: getVerticalSize(
                                                          80.00),
                                                      width: getHorizontalSize(
                                                          45.00))),
                                              Padding(
                                                  padding: getPadding(left: 94),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgFrame5,
                                                      height: getVerticalSize(
                                                          102.00),
                                                      width: getHorizontalSize(
                                                          142.00)))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(251.00),
                                        width: getHorizontalSize(408.00),
                                        margin: getMargin(top: 2, right: 22),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin:
                                                          getMargin(top: 10),
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
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .customBorderLR200),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(167.00),
                                                                        width: getHorizontalSize(391.00),
                                                                        margin: getMargin(top: 16, right: 10, bottom: 16),
                                                                        child: Stack(alignment: Alignment.topLeft, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(200.00)), bottomRight: Radius.circular(getHorizontalSize(200.00))), child: CommonImageView(imagePath: ImageConstant.imgVectorWhiteA700, height: getVerticalSize(167.00), width: getHorizontalSize(391.00), fit: BoxFit.cover))),
                                                                          Align(
                                                                              alignment: Alignment.topLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 83, top: 32, right: 83, bottom: 32),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                    Container(
                                                                                        height: getVerticalSize(6.00),
                                                                                        width: getHorizontalSize(7.00),
                                                                                        margin: getMargin(top: 7, bottom: 2),
                                                                                        child: Stack(alignment: Alignment.topRight, children: [
                                                                                          Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(top: 10, right: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(5.00), width: getSize(5.00)))),
                                                                                          Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(4.00), width: getSize(4.00))))
                                                                                        ])),
                                                                                    Padding(padding: getPadding(left: 5, bottom: 9), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(6.00), width: getSize(6.00))),
                                                                                    Padding(padding: getPadding(left: 4, top: 7), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(8.00), width: getSize(8.00)))
                                                                                  ])))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomRight,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                67,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                67,
                                                                            bottom:
                                                                                6),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroupIndigo100,
                                                                            height: getVerticalSize(111.00),
                                                                            width: getHorizontalSize(97.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(96.00),
                                                                        width: getHorizontalSize(268.00),
                                                                        margin: getMargin(top: 31, right: 10, bottom: 31),
                                                                        child: Stack(alignment: Alignment.centerLeft, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: CommonImageView(imagePath: ImageConstant.imgGroup2, height: getVerticalSize(96.00), width: getHorizontalSize(268.00))),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(
                                                                                  height: getSize(53.00),
                                                                                  width: getSize(53.00),
                                                                                  margin: getMargin(left: 63, top: 21, right: 63, bottom: 21),
                                                                                  child: Stack(alignment: Alignment.topRight, children: [
                                                                                    Align(
                                                                                        alignment: Alignment.bottomLeft,
                                                                                        child: Padding(
                                                                                            padding: getPadding(top: 10, right: 10),
                                                                                            child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                              Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 22, right: 4), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(4.00), width: getSize(4.00)))),
                                                                                                Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 21, right: 4), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(5.00), width: getSize(5.00)))),
                                                                                                Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 12, top: 24, right: 12), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(6.00), width: getSize(6.00)))),
                                                                                                Container(
                                                                                                    width: getHorizontalSize(30.00),
                                                                                                    margin: getMargin(top: 1),
                                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                                      Container(
                                                                                                          height: getVerticalSize(6.00),
                                                                                                          width: getHorizontalSize(7.00),
                                                                                                          margin: getMargin(bottom: 2),
                                                                                                          child: Stack(alignment: Alignment.topRight, children: [
                                                                                                            Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(top: 10, right: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(5.00), width: getSize(5.00)))),
                                                                                                            Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(4.00), width: getSize(4.00))))
                                                                                                          ])),
                                                                                                      CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(8.00), width: getSize(8.00))
                                                                                                    ]))
                                                                                              ]),
                                                                                              Padding(
                                                                                                  padding: getPadding(left: 2, bottom: 43),
                                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                    Padding(padding: getPadding(right: 1), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(2.00), width: getSize(2.00))),
                                                                                                    CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(3.00), width: getSize(3.00))
                                                                                                  ])),
                                                                                              Padding(
                                                                                                  padding: getPadding(left: 5, bottom: 34),
                                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                                    Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1, right: 1), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(6.00), width: getSize(6.00)))),
                                                                                                    CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(8.00), width: getSize(8.00))
                                                                                                  ]))
                                                                                            ]))),
                                                                                    Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(left: 10, bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup87, height: getSize(3.00), width: getSize(3.00))))
                                                                                  ])))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                27,
                                                                            right:
                                                                                10,
                                                                            bottom:
                                                                                27),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgGroup48,
                                                                            height: getVerticalSize(11.00),
                                                                            width: getHorizontalSize(290.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                39,
                                                                            top:
                                                                                35,
                                                                            right:
                                                                                39,
                                                                            bottom:
                                                                                35),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroup7221X28,
                                                                            height: getVerticalSize(21.00),
                                                                            width: getHorizontalSize(28.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                59,
                                                                            top:
                                                                                60,
                                                                            right:
                                                                                59,
                                                                            bottom:
                                                                                60),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroup9121X28,
                                                                            height: getVerticalSize(21.00),
                                                                            width: getHorizontalSize(28.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                60,
                                                                            top:
                                                                                34,
                                                                            right:
                                                                                60,
                                                                            bottom:
                                                                                34),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroup7319X45,
                                                                            height: getVerticalSize(19.00),
                                                                            width: getHorizontalSize(45.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                80,
                                                                            top:
                                                                                62,
                                                                            right:
                                                                                80,
                                                                            bottom:
                                                                                62),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgGroup9219X45,
                                                                            height: getVerticalSize(19.00),
                                                                            width: getHorizontalSize(45.00))))
                                                              ])))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          right: 9,
                                                          bottom: 10),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height:
                                                              getSize(43.00),
                                                          width:
                                                              getSize(43.00)))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 139,
                                                          top: 38,
                                                          right: 139,
                                                          bottom: 38),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height:
                                                              getSize(27.00),
                                                          width:
                                                              getSize(27.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          161.00),
                                                      width: getHorizontalSize(
                                                          148.00),
                                                      margin: getMargin(
                                                          left: 114,
                                                          top: 37,
                                                          right: 114,
                                                          bottom: 37),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup3,
                                                                    height: getVerticalSize(
                                                                        161.00),
                                                                    width: getHorizontalSize(
                                                                        148.00))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 4,
                                                                        top: 17,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            16),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                    height: getVerticalSize(26.00),
                                                                                    width: getHorizontalSize(49.00),
                                                                                    margin: getMargin(top: 65),
                                                                                    child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                      Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgGroup711, height: getVerticalSize(26.00), width: getHorizontalSize(30.00)))),
                                                                                      Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(left: 10, top: 10, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgGroup761, height: getVerticalSize(21.00), width: getHorizontalSize(28.00))))
                                                                                    ])),
                                                                                Padding(padding: getPadding(bottom: 15), child: CommonImageView(svgPath: ImageConstant.imgThumbsup, height: getVerticalSize(77.00), width: getHorizontalSize(59.00)))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(top: 14, right: 10),
                                                                              child: Obx(() => ListView.builder(
                                                                                  physics: NeverScrollableScrollPhysics(),
                                                                                  shrinkWrap: true,
                                                                                  itemCount: controller.signUpArabicModelObj.value.listgroupeightytwoItemList.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    ListgroupeightytwoItemModel model = controller.signUpArabicModelObj.value.listgroupeightytwoItemList[index];
                                                                                    return ListgroupeightytwoItemWidget(model);
                                                                                  })))
                                                                        ])))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 171,
                                                          top: 32,
                                                          right: 171,
                                                          bottom: 32),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup7421X28,
                                                          height:
                                                              getVerticalSize(
                                                                  21.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  28.00))))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 45, right: 20),
                                    child: Text("msg7".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtNotoKufiArabicBold24WhiteA700)),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 5, right: 20),
                                    child: Text("msg8".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtAdobeArabicRegular24
                                            .copyWith(letterSpacing: 0.24))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(
                                            left: 18, top: 32, right: 18),
                                        decoration: AppDecoration
                                            .outlineIndigoA200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
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
                                                      top: 15, bottom: 15),
                                                  child: Text("lbl10".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtAdobeArabicRegular24
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.24))),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(left: 22),
                                                  color: ColorConstant
                                                      .lightGreen600,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL8),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          56.00),
                                                      width: getHorizontalSize(
                                                          67.00),
                                                      decoration: AppDecoration
                                                          .fillLightgreen600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL8),
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 16,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            16),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgUser1,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00))))
                                                      ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        decoration: AppDecoration
                                            .outlineIndigoA200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
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
                                                  child: Text("lbl_966_0".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular16Bluegray50)),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(left: 22),
                                                  color: ColorConstant
                                                      .lightGreen600,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL8),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          56.00),
                                                      width: getHorizontalSize(
                                                          67.00),
                                                      decoration: AppDecoration
                                                          .fillLightgreen600
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .customBorderTL8),
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 16,
                                                                        right:
                                                                            20,
                                                                        bottom:
                                                                            16),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMobile,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00))))
                                                      ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 18, top: 25, right: 18),
                                        child: Obx(() => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .signUpArabicModelObj
                                                .value
                                                .listeyeItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              ListeyeItemModel model =
                                                  controller
                                                      .signUpArabicModelObj
                                                      .value
                                                      .listeyeItemList[index];
                                              return ListeyeItemWidget(model);
                                            })))),
                                CustomButton(
                                    width: 390,
                                    text: "lbl13".tr,
                                    margin:
                                        getMargin(left: 18, top: 25, right: 18),
                                    fontStyle:
                                        ButtonFontStyle.NotoKufiArabicBold16,
                                    onTap: onTapBtntf,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxttf();
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 18,
                                                top: 29,
                                                right: 18,
                                                bottom: 28),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl14".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize:
                                                              getFontSize(24),
                                                          fontFamily:
                                                              'Adobe Arabic',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "lbl4".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreen600,
                                                          fontSize:
                                                              getFontSize(24),
                                                          fontFamily:
                                                              'Adobe Arabic',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.left))))
                              ]))))
                ])));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.homeArabicScreen);
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.loginArabicScreen);
  }
}
