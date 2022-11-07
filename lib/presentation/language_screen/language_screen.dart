import 'package:yasan_s_application1/main.dart';

import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
bool alpha = false;
bool beta = false;

 
class LanguageScreen extends StatefulWidget{
  const LanguageScreen({Key? key}): super(key:key);

  @override
  _LanguageScreen createState() => _LanguageScreen();
}

class _LanguageScreen extends State<LanguageScreen>{

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    alpha=true;
    beta=false;
  }

  Widget build(BuildContext context) {
      final LanguageController controller = Get.put(LanguageController());

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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(378.00),
                                        width: getHorizontalSize(430.00),
                                        margin: getMargin(top: 28),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 55,
                                                          right: 20,
                                                          bottom: 55),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_change"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                24),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w400)),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_password"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        fontSize:
                                                                            getFontSize(
                                                                                24),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10, bottom: 10),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFrame2,
                                                                    height: getVerticalSize(
                                                                        102.00),
                                                                    width: getHorizontalSize(
                                                                        142.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            88,
                                                                        bottom:
                                                                            25),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgGroup30WhiteA70080X60,
                                                                    height:
                                                                        getVerticalSize(
                                                                            80.00),
                                                                    width: getHorizontalSize(
                                                                        60.00)))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 72,
                                                          right: 10,
                                                          bottom: 72),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height:
                                                              getSize(43.00),
                                                          width:
                                                              getSize(43.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          260.00),
                                                      width: getHorizontalSize(
                                                          408.00),
                                                      margin: getMargin(
                                                          top: 10, right: 10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Card(
                                                                    clipBehavior:
                                                                        Clip
                                                                            .antiAlias,
                                                                    elevation:
                                                                        0,
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    color: ColorConstant
                                                                        .lightGreen600,
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadiusStyle.customBorderLR200),
                                                                    child: Container(
                                                                        height: getVerticalSize(199.00),
                                                                        width: getHorizontalSize(408.00),
                                                                        decoration: AppDecoration.fillLightgreen600.copyWith(borderRadius: BorderRadiusStyle.customBorderLR200),
                                                                        child: Stack(children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(padding: getPadding(top: 16, right: 10, bottom: 16), child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(getHorizontalSize(200.00)), bottomRight: Radius.circular(getHorizontalSize(200.00))), child: CommonImageView(imagePath: ImageConstant.imgVectorWhiteA700, height: getVerticalSize(167.00), width: getHorizontalSize(391.00), fit: BoxFit.cover))))
                                                                        ])))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            40,
                                                                        right:
                                                                            40),
                                                                    child: CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup112,
                                                                        height: getVerticalSize(
                                                                            260.00),
                                                                        width: getHorizontalSize(
                                                                            295.00)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            75.00),
                                                                        width: getHorizontalSize(
                                                                            100.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                17,
                                                                            top:
                                                                                48,
                                                                            right:
                                                                                17,
                                                                            bottom:
                                                                                48),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgMap75X100, height: getVerticalSize(75.00), width: getHorizontalSize(100.00))),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 19, top: 18, right: 19, bottom: 18), child: Text("lbl2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtNotoKufiArabicBold24.copyWith(letterSpacing: 0.24))))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            75.00),
                                                                        width: getHorizontalSize(
                                                                            88.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                25,
                                                                            top:
                                                                                55,
                                                                            right:
                                                                                25,
                                                                            bottom:
                                                                                55),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgLightbulb, height: getVerticalSize(75.00), width: getHorizontalSize(88.00))),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 13, top: 14, right: 13, bottom: 14), child: Text("lbl_hello".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold24)))
                                                                            ])))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 58,
                                                          top: 113,
                                                          right: 58,
                                                          bottom: 113),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgLocation,
                                                          height:
                                                              getSize(27.00),
                                                          width:
                                                              getSize(27.00))))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, top: 28, right: 24),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(185.00),
                                                  margin: getMargin(top: 15),
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "lbl_choose".tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                fontSize:
                                                                    getFontSize(
                                                                        24),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                        TextSpan(
                                                            text:
                                                                "lbl_your_language"
                                                                    .tr,
                                                            style: TextStyle(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                fontSize:
                                                                    getFontSize(
                                                                        24),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))
                                                      ]),
                                                      textAlign:
                                                          TextAlign.left)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 100, bottom: 42),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup37,
                                                      height: getSize(33.00),
                                                      width: getSize(33.00)))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(331.00),
                                        margin: getMargin(
                                            left: 24, top: 24, right: 24),
                                        child: Text("msg_please_choose_y".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular16Bluegray50
                                                .copyWith(
                                                    letterSpacing: 0.16)))),
                                Padding(
                                    padding: getPadding(
                                        left: 20, top: 30, right: 20),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
GestureDetector(onTap:(() {

  
  print(alpha);
  setState(() {
    alpha=!alpha;
    beta=!beta;
    var locale = Locale('ar','AE');
    Get.updateLocale(locale);
  });
}),
  child:   Container(
                                                decoration: alpha==true?AppDecoration
                                                    .outlineCyan400
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder6)
                                                                :
                                                                BoxDecoration(),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin: getMargin(
                                                              left: 24,
                                                              top: 14,
                                                              bottom: 125),
                                                          color: ColorConstant
                                                              .cyan400,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                          child:alpha==true? Container(
                                                              height:
                                                                  getSize(23.00),
                                                              width:
                                                                  getSize(23.00),
                                                              decoration: alpha==true?AppDecoration
                                                                  .outlineCyan400
                                                                  .copyWith(
                                                                      borderRadius:
  
  
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10):  BoxDecoration(),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                all:
                                                                                    1),
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgCheckmark,
                                                                                height: getSize(20.00),
                                                                                width: getSize(20.00))))
                                                                  ]))
                                                                  :Container()
                                                                  
                                                                  ),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14,
                                                              top: 22,
                                                              right: 51,
                                                              bottom: 21),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgEdit82X82,
                                                                        height: getSize(
                                                                            82.00),
                                                                        width: getSize(
                                                                            82.00))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                12),
                                                                    child: Text(
                                                                        "lbl3"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium16WhiteA700))
                                                              ]))
                                                    ])),
),
                                          GestureDetector(
                                            onTap:(() {

  
  print(alpha);
  setState(() {
    alpha=!alpha;
    beta=!beta;
        var locale = Locale('en','us');
    Get.updateLocale(locale);
  });
 
}),
                                            child: Container(
                                                decoration: beta==true?AppDecoration
                                                      .outlineCyan400
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder6)
                                                                  :
                                                                  BoxDecoration(),
                                                  
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin: getMargin(
                                                              left: 14,
                                                              top: 14,
                                                              bottom: 125),
                                                          color: ColorConstant
                                                              .cyan400,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                          child: beta==true?Container(
                                                              height:
                                                                  getSize(23.00),
                                                              width:
                                                                  getSize(23.00),
                                                              decoration: AppDecoration
                                                                  .fillCyan400
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                all:
                                                                                    1),
                                                                            child: CommonImageView(
                                                                                svgPath: ImageConstant.imgCheckmark,
                                                                                height: getSize(20.00),
                                                                                width: getSize(20.00))))
                                                                  ])):Container()
                                                                  
                                                                  ),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14,
                                                              top: 22,
                                                              right: 51,
                                                              bottom: 21),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgMinimize,
                                                                        height: getSize(
                                                                            82.00),
                                                                        width: getSize(
                                                                            82.00))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                13,
                                                                            top:
                                                                                16,
                                                                            right:
                                                                                12),
                                                                    child: Text(
                                                                        "lbl_english"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium16WhiteA700))
                                                              ]))
                                                    ])),
                                          )
                                        ])),
                                CustomButton(
                                    width: 390,
                                    text: "lbl_continue".tr,
                                    margin: getMargin(all: 20),
                                    onTap: onTapBtnContinue)
                              ]))))
                ])));
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
