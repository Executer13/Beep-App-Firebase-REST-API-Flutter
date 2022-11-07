import 'dart:io';

import 'package:yasan_s_application1/core/utils/DBox.dart';

import 'controller/recharge_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/core/utils/validation_functions.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:yasan_s_application1/widgets/custom_icon_button.dart';
import 'package:yasan_s_application1/widgets/custom_search_view.dart';
import 'package:yasan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';
import 'package:go_sell_sdk_flutter/go_sell_sdk_flutter.dart';
import 'package:go_sell_sdk_flutter/model/models.dart';



// ignore_for_file: must_be_immutable

class RechargeScreen extends StatefulWidget {


  @override
  State<RechargeScreen> createState() => _RechargeScreenState();
}

class _RechargeScreenState extends State<RechargeScreen> {


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RechargeController controller = Get.put(RechargeController());
 late Map<dynamic, dynamic> tapSDKResult;
  String responseID = "";
  String sdkStatus = "";
  late String sdkErrorCode;
  late String sdkErrorMessage;
  late String sdkErrorDescription;
  int money=1280;

  @override
  void initState() {
    super.initState();
   
    configureSDK();
  }

  // configure SDK
  Future<void> configureSDK() async {
    // configure app
    configureApp();
    // sdk session configurations
    setupSDKSession();
  }

  // configure app key and bundle-id (You must get those keys from tap)
  Future<void> configureApp() async {
    GoSellSdkFlutter.configureApp(
        bundleId: Platform.isAndroid ? "com.yasansapplication.app" : "",
        productionSecreteKey:
            Platform.isAndroid ? "" : "",
        sandBoxsecretKey:
            Platform.isAndroid ? "Bearer sk_test_XKokBfNWv6FIYuTMg5sLPjhJ" : "",
        lang: "en");
  }
  //

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> setupSDKSession() async {
    try {
      GoSellSdkFlutter.sessionConfigurations(
          trxMode: TransactionMode.PURCHASE,
          transactionCurrency: "kwd",
          amount: '1000',
          customer: Customer(
              customerId: "",
              // customer id is important to retrieve cards saved for this customer
              email: "test@test.com",
              isdNumber: "965",
              number: "4600410123456789",
              firstName: "test",
              middleName: "test",
              lastName: "test",
              metaData: null),
          paymentItems: <PaymentItem>[],
          // List of taxes
          taxes: [],
          // List of shippnig
          shippings: [],
          // Post URL
          postURL: "https://tap.company",
          // Payment description
          paymentDescription: "paymentDescription",
          // Payment Metadata
          paymentMetaData: {
            "a": "a meta",
            "b": "b meta",
          },
          // Payment Reference
          paymentReference: Reference(
              acquirer: "acquirer",
              gateway: "gateway",
              payment: "payment",
              track: "track",
              transaction: "trans_910101",
              order: "order_262625"),
          // payment Descriptor
          paymentStatementDescriptor: "paymentStatementDescriptor",
          // Save Card Switch
          isUserAllowedToSaveCard: true,
          // Enable/Disable 3DSecure
          isRequires3DSecure: false,
          // Receipt SMS/Email
          receipt: Receipt(true, false),
          // Authorize Action [Capture - Void]
          authorizeAction: AuthorizeAction(
              type: AuthorizeActionType.VOID, timeInHours: 10),
          // Destinations
          destinations: null,
          // merchant id
          merchantID: "",
          // Allowed cards
          allowedCadTypes: CardType.ALL,
          applePayMerchantID: "applePayMerchantID",
          allowsToSaveSameCardMoreThanOnce: false,
          // pass the card holder name to the SDK
          cardHolderName: "Card Holder NAME",
          // disable changing the card holder name by the user
          allowsToEditCardHolderName: true,
          // select payments you need to show [Default is all, and you can choose between WEB-CARD-APPLEPAY ]
          paymentType: PaymentType.ALL,
          // Transaction mode
          sdkMode: SDKMode.Sandbox);
    } on PlatformException {
      // platformVersion = 'Failed to get platform version.';
    }

    if (!mounted) return;

    setState(() {
      tapSDKResult = {};
    });
  }

  Future<void> startSDK() async {
    setState(() {
    
    });

    tapSDKResult = await GoSellSdkFlutter.startPaymentSDK;


    print('>>>> ${tapSDKResult['sdk_result']}');
    setState(() {
      switch (tapSDKResult['sdk_result']) {
        case "SUCCESS":
          sdkStatus = "SUCCESS";
          handleSDKResult();
          break;
        case "FAILED":
          sdkStatus = "FAILED";
          handleSDKResult();
          break;
        case "SDK_ERROR":
          print('sdk error............');
          print(tapSDKResult['sdk_error_code']);
          print(tapSDKResult['sdk_error_message']);
          print(tapSDKResult['sdk_error_description']);
          print('sdk error............');
          sdkErrorCode = tapSDKResult['sdk_error_code'].toString();
          sdkErrorMessage = tapSDKResult['sdk_error_message'];
          sdkErrorDescription = tapSDKResult['sdk_error_description'];
          break;

        case "NOT_IMPLEMENTED":
          sdkStatus = "NOT_IMPLEMENTED";
          break;
      }
    });
  }

  void handleSDKResult() {
    switch (tapSDKResult['trx_mode']) {
      case "CHARGE":
        printSDKResult('Charge');
        break;

      case "AUTHORIZE":
        printSDKResult('Authorize');
        break;

      case "SAVE_CARD":
        printSDKResult('Save Card');
        break;

      case "TOKENIZE":
        print('TOKENIZE token : ${tapSDKResult['token']}');
        print('TOKENIZE token_currency  : ${tapSDKResult['token_currency']}');
        print('TOKENIZE card_first_six : ${tapSDKResult['card_first_six']}');
        print('TOKENIZE card_last_four : ${tapSDKResult['card_last_four']}');
        print('TOKENIZE card_object  : ${tapSDKResult['card_object']}');
        print('TOKENIZE card_exp_month : ${tapSDKResult['card_exp_month']}');
        print('TOKENIZE card_exp_year    : ${tapSDKResult['card_exp_year']}');

        responseID = tapSDKResult['token'];
        break;
    }
  }

  void printSDKResult(String trx_mode) {
    print('$trx_mode status                : ${tapSDKResult['status']}');
    print('$trx_mode id               : ${tapSDKResult['charge_id']}');
    print('$trx_mode  description        : ${tapSDKResult['description']}');
    print('$trx_mode  message           : ${tapSDKResult['message']}');
    print('$trx_mode  card_first_six : ${tapSDKResult['card_first_six']}');
    print('$trx_mode  card_last_four   : ${tapSDKResult['card_last_four']}');
    print('$trx_mode  card_object         : ${tapSDKResult['card_object']}');
    print('$trx_mode  card_brand          : ${tapSDKResult['card_brand']}');
    print('$trx_mode  card_exp_month  : ${tapSDKResult['card_exp_month']}');
    print('$trx_mode  card_exp_year: ${tapSDKResult['card_exp_year']}');
    print('$trx_mode  acquirer_id  : ${tapSDKResult['acquirer_id']}');
    print(
        '$trx_mode  acquirer_response_code : ${tapSDKResult['acquirer_response_code']}');
    print(
        '$trx_mode  acquirer_response_message: ${tapSDKResult['acquirer_response_message']}');
    print('$trx_mode  source_id: ${tapSDKResult['source_id']}');
    print('$trx_mode  source_channel     : ${tapSDKResult['source_channel']}');
    print('$trx_mode  source_object      : ${tapSDKResult['source_object']}');
    print(
        '$trx_mode source_payment_type : ${tapSDKResult['source_payment_type']}');
    responseID = tapSDKResult['charge_id'];
  }

 
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(top: 14),
                          child: Padding(
                              padding: getPadding(left: 21, right: 170),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright)),
                                    Padding(
                                        padding: getPadding(top: 4, bottom: 8),
                                        child: Text("lbl_recharge".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsSemiBold18))
                                  ]))),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  margin: getMargin(top: 12),
                                  decoration: AppDecoration.fillBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL20),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            height: getVerticalSize(159.00),
                                            width: getHorizontalSize(350.00),
                                            margin: getMargin(
                                                left: 20, top: 71, right: 20),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  106.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  278.00),
                                                          margin: getMargin(
                                                              left: 36,
                                                              top: 10,
                                                              right: 36),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray100,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00))))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  121.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  314.00),
                                                          margin: getMargin(
                                                              left: 18,
                                                              top: 11,
                                                              right: 18,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray200,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin: getMargin(
                                                              bottom: 10),
                                                          color: ColorConstant
                                                              .lightGreen600,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      134.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      350.00),
                                                              decoration: AppDecoration
                                                                  .outlineBlack9000c1
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(64.00),
                                                                            width: getHorizontalSize(350.00),
                                                                            margin: getMargin(bottom: 10),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(alignment: Alignment.centerLeft, child: CommonImageView(svgPath: ImageConstant.imgVector, height: getVerticalSize(64.00), width: getHorizontalSize(350.00))),
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: Padding(
                                                                                      padding: getPadding(left: 45, top: 10, right: 45, bottom: 5),
                                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                                        Container(
                                                                                            height: getVerticalSize(26.00),
                                                                                            width: getHorizontalSize(57.00),
                                                                                            margin: getMargin(bottom: 3),
                                                                                            child: Stack(alignment: Alignment.centerRight, children: [
                                                                                              Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(top: 10, right: 10, bottom: 2), child: CommonImageView(imagePath: ImageConstant.imgGroup208, height: getSize(19.00), width: getSize(19.00)))),
                                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 10), child: CommonImageView(imagePath: ImageConstant.imgGroup210, height: getSize(26.00), width: getSize(26.00)))),
                                                                                              Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 15, top: 10, right: 15, bottom: 1), child: CommonImageView(imagePath: ImageConstant.imgGroup209, height: getVerticalSize(22.00), width: getHorizontalSize(21.00))))
                                                                                            ])),
                                                                                        Padding(padding: getPadding(left: 27, top: 10), child: Text("lbl_my_balance".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular16))
                                                                                      ])))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.bottomRight,
                                                                        child: Container(
                                                                            margin: getMargin(left: 62, top: 36, right: 62, bottom: 36),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: money.toString(), style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(36), fontFamily: 'Poppins', fontWeight: FontWeight.w700)),
                                                                                  TextSpan(text: " ", style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(36), fontFamily: 'Poppins', fontWeight: FontWeight.w600)),
                                                                                  TextSpan(text: "lbl_sar".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(36), fontFamily: 'Poppins', fontWeight: FontWeight.w400))
                                                                                ]),
                                                                                textAlign: TextAlign.left))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(
                                                                                13.00),
                                                                            width: getHorizontalSize(
                                                                                54.00),
                                                                            margin: getMargin(
                                                                                left: 46,
                                                                                top: 32,
                                                                                right: 46,
                                                                                bottom: 32),
                                                                            decoration: BoxDecoration(color: ColorConstant.black9007f, borderRadius: BorderRadius.circular(getHorizontalSize(3.00))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 40,
                                                                                top: 36,
                                                                                right: 40,
                                                                                bottom: 36),
                                                                            child: CommonImageView(imagePath: ImageConstant.imgGroup207, height: getVerticalSize(49.00), width: getHorizontalSize(69.00))))
                                                                  ]))))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 21,
                                                    top: 45,
                                                    right: 21),
                                                child: Text(
                                                    "msg_enter_amount_to".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold16))),
                                        CustomTextFormField(
                                            width: 389,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.priceOneController,
                                            hintText: "lbl_0_sar".tr,
                                            margin: getMargin(
                                                left: 20, top: 12, right: 20),
                                            padding:
                                                TextFormFieldPadding.PaddingT20,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 16,
                                                    right: 17,
                                                    bottom: 16),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgVolume)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(24.00),
                                                minHeight: getSize(24.00))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 25,
                                                    right: 20),
                                                child: Text(
                                                    "msg_card_holder_nam".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold16))),
                                        CustomTextFormField(
                                            width: 390,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .groupSeventeenController,
                                            hintText: "lbl_full_name".tr,
                                            margin: getMargin(
                                                left: 20, top: 13, right: 20),
                                            textInputAction:
                                                TextInputAction.done,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 19,
                                                    top: 15,
                                                    right: 11,
                                                    bottom: 17),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgUser24X24)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(24.00),
                                                minHeight: getSize(24.00)),
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 25,
                                                    right: 20),
                                                child: Text(
                                                    "lbl_card_number".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsSemiBold16))),
                                        Container(
                                            margin: getMargin(
                                                left: 20, top: 13, right: 20),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17,
                                                          top: 16,
                                                          bottom: 16),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgTransparenthd,
                                                          height:
                                                              getVerticalSize(
                                                                  23.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  25.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 20,
                                                          bottom: 19),
                                                      child: Text("lbl_xxxx".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 20,
                                                          bottom: 19),
                                                      child: Text("lbl_xxxx".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 21,
                                                          top: 20,
                                                          bottom: 19),
                                                      child: Text("lbl_xxxx".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 20,
                                                          bottom: 19),
                                                      child: Text("lbl_xxxx".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 25,
                                                    right: 20),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text("lbl_expiry_date".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold16),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 171,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_cvc".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold16))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 12, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .outlineGray300
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder10),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            17,
                                                                        top: 15,
                                                                        bottom:
                                                                            17),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCalendar24X24,
                                                                    height:
                                                                        getSize(
                                                                            24.00),
                                                                    width: getSize(
                                                                        24.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            12,
                                                                        top: 15,
                                                                        right:
                                                                            134,
                                                                        bottom:
                                                                            17),
                                                                child: Text(
                                                                    "lbl_mm_yy"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium16))
                                                          ])),
                                                  CustomSearchView(
                                                      width: 126,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .groupFifteenController,
                                                      hintText: "lbl_xxx".tr,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 17,
                                                              top: 16,
                                                              right: 11,
                                                              bottom: 16),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              minWidth: getSize(
                                                                  24.00),
                                                              minHeight:
                                                                  getSize(
                                                                      24.00)))
                                                ])),
                                        CustomButton(
                                            width: 349,
                                            text: "lbl_recharge".tr,
                                            margin: getMargin(
                                                left: 20,
                                                top: 36,
                                                right: 20,
                                                bottom: 20),
                                            onTap: (){
                                            startSDK();
                                            
                                            onTapBtnRecharge(); }
                                            
                                            )
                                      ]))))
                    ]))));
  }

  onTapBtnRecharge() {
        alertbox(context,'Transaction Completed','Transaction has been successfully Completed','assets/gif/successful.gif');
        money=money+int.parse(controller.priceOneController.value.toString());
  }
}
