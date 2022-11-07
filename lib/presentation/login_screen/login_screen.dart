import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:yasan_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter_gifimage/flutter_gifimage.dart';
import '../../core/utils/DBox.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';

import 'models/login_model.dart';
String vid='';
String phone='';
Future<String> getPhoneNumber()  async {
  String phone='' ;
final FirebaseAuth _auth = FirebaseAuth.instance;
   await
      FirebaseFirestore.instance.collection('DB').doc(_auth.currentUser!.uid).get()
    .then((value) {
      

      
             phone= value.data()!['phone'];
            
      
       print("value is "+phone);
       



       // Access your after your get the data
     });

     return phone;
  }



class LoginScreen extends StatefulWidget {
  

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {

  
var email = TextEditingController(text: "lbl_966_0".tr);
var password = TextEditingController(text:"lbl_966_0".tr);
    late FlutterGifController controller1;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
      controller1 = FlutterGifController(vsync: this);
       WidgetsBinding.instance.addPostFrameCallback((_) {
      controller1.repeat(
        min: 0,
        max: 1,
        period: const Duration(milliseconds: 1000),
      );
  });}

  @override
  Widget build(BuildContext context) {
          final LoginController controller = Get.put(LoginController());
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
                    
                    ])),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                          width: size.width,
                          margin: getMargin(top: 8),
                          child: Padding(
                              padding: getPadding(right: 148),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 35),
                                        child: CommonImageView(
                                            imagePath: ImageConstant
                                                .imgGroup30WhiteA700,
                                            height: getVerticalSize(80.00),
                                            width: getHorizontalSize(45.00))),
                                    Padding(
                                        padding: getPadding(top: 13),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgFrame,
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
                                                                      
                                                                             Positioned(
                                                                              top: 50,
                                                                              right:20,
                                                                                                                                                  
                                                                                                                                                      child:Container
                                                                               
                                                                                                                                                      ( 
                                                                                                                                                     
                                                                                                                                                       
                                                                                                                                                         height:
                                                                                                                                                 getHorizontalSize(
                                                                                                                                                     443.00),
                                                                                                                                             width: getVerticalSize(
                                                                                                                                                 363.00),
                                                                                                                                                        child: Image.asset(
                                                                               
                                                                               
                                                                             "assets/gif/car.gif",
                                                                             fit: BoxFit.fitWidth,
                                                                             
                                                                                                                                               ),
                                                                                                                                                      ),),
                                                
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
                                                                      23.00)))),
                                                                    
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
                                                   
                                                   
                                                     
                                                    
                                                    
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(165.00),
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 47,
                                                    right: 20),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "lbl_login_to".tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
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
                                                              "lbl_your_account"
                                                                  .tr,
                                                          style: TextStyle(
                                                              color:
                                                                  ColorConstant
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
                                                        TextAlign.left))),
                                                        CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            email,
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
                                        Obx(() =>CustomTextFormField(
                                        width: 390,
                                        focusNode: FocusNode(),
                                        controller:
                                            password,
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
                                              controller.isShowPassword1.value =
                                                  !controller
                                                      .isShowPassword1.value;
                                            },
                                            child: Container(margin: getMargin(left: 30, top: 16, right: 20, bottom: 16), child: CommonImageView(svgPath: controller.isShowPassword1.value ? ImageConstant.imgEye24X24 : ImageConstant.imgEye24X24))),
                                        suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(24.00), minHeight: getVerticalSize(24.00)),
                                    
                                        isObscureText: !controller.isShowPassword1.value)),
                                    
                                        CustomButton(
                                            width: 390,
                                            text: "lbl_login".tr,
                                            margin: getMargin(
                                                left: 20, top: 25, right: 20),
                                            onTap: 
                                            
                                            
                                            () async {
                                     //bar
                                     showDialog(context: context, builder: (context){

                                        return Center(child: CircularProgressIndicator());

                                     });


                            // Add login code
                            
                            print(email.text+password.text);
                                UserCredential? userCredential =
                        await LoginModel().signin(email.text, password.text);
                    if (userCredential?.user != null) {
                     
                      userCredential!.user!.emailVerified?{

phone=await getPhoneNumber(),
 print('hahah'+phone),

                           await FirebaseAuth.instance.verifyPhoneNumber(timeout: Duration(seconds: 120),
  phoneNumber: phone,
  verificationCompleted: (phoneAuthCredential) {
    Get.toNamed(AppRoutes.otpScreen);
  },
  
  verificationFailed: (FirebaseAuthException e) {},
  codeSent: 
  
  
  (String verificationId, int? resendToken) {
    vid=verificationId;
    Get.back();

Get.toNamed(AppRoutes.otpScreen);

  },
  codeAutoRetrievalTimeout: (String verificationId) {
     alertbox(context,'Signin Eror','Something Went Wrong!','images/cancel.gif');
     Get.back();

  },
),
                          
                              
                         
                              }
                          :() {Get.back();
 
                          alertbox(context,'Please Verify Email ',
                        "Email Verification was sent to your Email, Please verify the Email First",'assets/gif/mail-verification.gif');};
                    } else {
                      Get.back();

                      alertbox(context,'Signin Eror','Incorrect Email or Password. Kindly Type Correct Credentials!','assets/gif/cancel.gif');
                      print('error');
                    }
                              
                                    },
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            ),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 31, right: 20),
                                            child: GestureDetector(
                                              onTap:onTapTxtForgot,
                                              child: Text(
                                                  "msg_forgot_password".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsSemiBold16Lightgreen600),
                                            )),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDonthaveana();
                                            },
                                            child: Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 41,
                                                    right: 20),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "msg_don_t_have_an_a2"
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
                                                              "lbl_sign_up".tr,
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
                                                    textAlign: TextAlign.left)))
                                      ]))))
                    ]))));
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.otpScreen);
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
   onTapTxtForgot() {
    Get.toNamed(AppRoutes.resetPasswordArabicScreen);
  }
}

 
