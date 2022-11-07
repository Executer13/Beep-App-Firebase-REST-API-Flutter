import '../sign_up_screen/widgets/sign_up_item_widget.dart';
import 'controller/sign_up_controller.dart';
import 'models/sign_up_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/core/utils/validation_functions.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:yasan_s_application1/widgets/custom_icon_button.dart';
import 'package:yasan_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.indigo500,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(
                                            left: 21, top: 24, right: 21),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright)),
                                    Padding(
                                        padding: getPadding(top: 15, right: 10),
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
                                                          .imgGroup30WhiteA700,
                                                      height: getVerticalSize(
                                                          80.00),
                                                      width: getHorizontalSize(
                                                          45.00))),
                                              Padding(
                                                  padding: getPadding(left: 94),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgFrame1,
                                                      height: getVerticalSize(
                                                          102.00),
                                                      width: getHorizontalSize(
                                                          142.00)))
                                            ])),
                                    Container(
                                        height: getVerticalSize(251.00),
                                        width: getHorizontalSize(408.00),
                                        margin: getMargin(top: 2, right: 10),
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
                                                                              child: CommonImageView(imagePath: ImageConstant.imgGroup96X268, height: getVerticalSize(96.00), width: getHorizontalSize(268.00))),
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
                                                                                            padding: getPadding(top: 0, right: 0),
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
                                                                                                  padding: getPadding(left: 5, bottom: 20),
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
                                                                                ImageConstant.imgGroup72,
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
                                                                                ImageConstant.imgGroup91,
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
                                                                                ImageConstant.imgGroup73,
                                                                            height: getVerticalSize(20.00),
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
                                                                                ImageConstant.imgGroup92,
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
                                                                            .imgGroup161X148,
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
                                                                                      Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgGroup7126X30, height: getVerticalSize(26.00), width: getHorizontalSize(30.00)))),
                                                                                      Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(left: 10, top: 10, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgGroup7621X28, height: getVerticalSize(21.00), width: getHorizontalSize(28.00))))
                                                                                    ])),
                                                                                Padding(padding: getPadding(bottom: 15), child: CommonImageView(svgPath: ImageConstant.imgThumbsup, height: getVerticalSize(77.00), width: getHorizontalSize(59.00)))
                                                                              ]),
                                                                          Padding(
                                                                              padding: getPadding(top: 14, right: 10),
                                                                              child: Obx(() => ListView.builder(
                                                                                  physics: NeverScrollableScrollPhysics(),
                                                                                  shrinkWrap: true,
                                                                                  itemCount: controller.signUpModelObj.value.signUpItemList.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    SignUpItemModel model = controller.signUpModelObj.value.signUpItemList[index];
                                                                                    return SignUpItemWidget(model);
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
                                                              .imgGroup74,
                                                          height:
                                                              getVerticalSize(
                                                                  21.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  28.00))))
                                            ])),
                                    Container(
                                        margin: getMargin(
                                            left: 20, top: 45, right: 20),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_sign_up_to".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(24),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: "lbl_beep_alla_beep".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(24),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600))
                                            ]),
                                            textAlign: TextAlign.left)),
                                    Container(
                                        width: getHorizontalSize(350.00),
                                        margin: getMargin(
                                            left: 20, top: 23, right: 20),
                                        child: Text("msg_please_fill_out".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular16Bluegray50
                                                .copyWith(
                                                    letterSpacing: 0.16))),
                                   
                             


  CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.nameController,
                                        hintText: "lbl_full_name".tr,
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA200,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsRegular16,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            margin: getMargin(right: 21),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen600,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)))),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgMobile)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                              
                                        
                                        ), CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.emailController,
                                        hintText: "@gmail.com".tr,
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA200,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsRegular16,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            margin: getMargin(right: 21),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen600,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)))),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgMobile)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                              
                                        
                                        ),

                                        CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.phoneController,
                                        hintText: "lbl_966_0".tr,
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA200,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsRegular16,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            margin: getMargin(right: 21),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen600,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)))),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgMobile)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                              
                                        
                                        ),
                                    Obx(() => CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.groupSixController,
                                        hintText: "lbl_password".tr,
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA200,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsRegular16,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            margin: getMargin(right: 21),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen600,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)))),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgLock)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(margin: getMargin(left: 30, top: 16, right: 20, bottom: 16), child: CommonImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgEye24X24 : ImageConstant.imgEye24X24))),
                                        suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(24.00), minHeight: getVerticalSize(24.00)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText: !controller.isShowPassword.value)),
                                    Obx(() => CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.groupFiveController,
                                        hintText: "msg_confirm_passwor".tr,
                                        margin: getMargin(
                                            left: 18, top: 25, right: 18),
                                        variant: TextFormFieldVariant
                                            .OutlineIndigoA200,
                                        fontStyle: TextFormFieldFontStyle
                                            .PoppinsRegular16,
                                        textInputAction: TextInputAction.done,
                                        alignment: Alignment.center,
                                        prefix: Container(
                                            padding: getPadding(
                                                left: 23,
                                                top: 16,
                                                right: 20,
                                                bottom: 16),
                                            margin: getMargin(right: 21),
                                            decoration: BoxDecoration(
                                                color:
                                                    ColorConstant.lightGreen600,
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            8.00)))),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgLock24X24)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword1.value =
                                                  !controller
                                                      .isShowPassword1.value;
                                            },
                                            child: Container(margin: getMargin(left: 30, top: 16, right: 20, bottom: 16), child: CommonImageView(svgPath: controller.isShowPassword1.value ? ImageConstant.imgEye24X24 : ImageConstant.imgEye24X24))),
                                        suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(24.00), minHeight: getVerticalSize(24.00)),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText: !controller.isShowPassword1.value)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(385.00),
                                            margin: getMargin(
                                                left: 18, top: 30, right: 18),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "msg_by_signing_up_y2"
                                                              .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray50,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.16)),
                                                  TextSpan(
                                                      text: "lbl_privacy_policy"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreen600,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.16)),
                                                  TextSpan(
                                                      text: "lbl_and".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .bluegray50,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.16)),
                                                  TextSpan(
                                                      text: "msg_terms_conditi"
                                                          .tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .lightGreen600,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          letterSpacing: 0.16))
                                                ]),
                                                textAlign: TextAlign.left))),
                                    CustomButton(
                                        width: 390,
                                        text: "lbl_sign_up".tr,
                                        margin: getMargin(
                                            left: 18, top: 31, right: 18),
                                        onTap:(){ onTapBtnSignup(context,controller.emailController.text.toString(),
                                        
                                        controller.groupFiveController.text.toString(),
                                        controller.nameController.text.toString(),
                                        controller.phoneController.text.toString(),
                                        );},
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                            onTap: () {
                                              onTapTxtAlreadyhavean();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 18,
                                                    top: 35,
                                                    right: 18,
                                                    bottom: 20),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_already_have_an2"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400)),
                                                      TextSpan(
                                                          text: " ",
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                      TextSpan(
                                                          text:
                                                              "lbl_sign_in".tr,
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .lightGreen600,
                                                              fontSize:
                                                                  getFontSize(
                                                                      16),
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600))
                                                    ]),
                                                    textAlign:
                                                        TextAlign.left))))
                                  ]))))
                    ]))));
  }

  onTapBtnSignup(BuildContext context,String email,String password,String name,String phone) async {



   showDialog(context: context, builder: (context){

                                        return Center(child: CircularProgressIndicator());

                                     });

                      

                       await  SignUpItemModel().createAccount(context,email, password,name,phone);
                        
               

    
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
