import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:location/location.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:yasan_s_application1/core/utils/DBox.dart';

import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'models/home_model.dart';
class HomeScreen extends StatefulWidget {
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
       final HomeController controller = Get.put(HomeController());



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                     color: ColorConstant.indigo501,
                      width: size.width,
                      padding: getPadding(top: 24,bottom:10),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 12, bottom: 19 ,left:10),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(
                                                  getHorizontalSize(34.50)),
                                          child: CommonImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse18,
                                              height: getSize(69.00),
                                              width: getSize(69.00),
                                              fit: BoxFit.cover)),
                                      Padding(
                                          padding: getPadding(
                                              left: 10, top: 6, bottom: 5),
                                          child: Column(
                                              mainAxisSize:
                                                  MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.center,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                100.00),
                                                        margin: getMargin(
                                                            left: 2),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "lbl_hello"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant.whiteA700,
                                                                          fontSize: getFontSize(12),
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: " \n"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant.whiteA700,
                                                                          fontSize: getFontSize(14),
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w400)),
                                                                  TextSpan(
                                                                      text: "lbl_abdullah"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: ColorConstant.whiteA700,
                                                                          fontSize: getFontSize(16),
                                                                          fontFamily: 'Poppins',
                                                                          fontWeight: FontWeight.w600))
                                                                ]),
                                                            textAlign:
                                                                TextAlign
                                                                    .left))),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 2, right: 10),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top:
                                                                          2,
                                                                      bottom:
                                                                          1),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocation13X13,
                                                                  height: getSize(
                                                                      10.00),
                                                                  width: getSize(
                                                                      10.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          5),
                                                              child: Text(
                                                                  "lbl_riyadh"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular12IndigoA100))
                                                        ]))
                                              ]))
                                    ])),
                            Padding(
                                padding: getPadding(left: 20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(left: 20),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    CustomButton(
                                                      
                                                        width: 140,
                                                        text: "lbl_1284_sar"
                                                            .tr,
                                                        padding:
                                                            ButtonPadding
                                                                .PaddingAll7,
                                                        prefixWidget: Container(
                                                            margin:
                                                                getMargin(
                                                                    right:
                                                                        8),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGrid24X24))),
                                                    Container(
                                                        height:
                                                            getSize(14.00),
                                                        width:
                                                            getSize(14.00),
                                                        margin: getMargin(
                                                            left: 20,
                                                            top: 5,
                                                            bottom: 5),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: GestureDetector(
onTap: (){
   showDialog(context: context, builder: (context){

                                        return Center(child: CircularProgressIndicator());

                                     });


  logout();
},

                                                                    child: CommonImageView(
                                                                        imagePath: ImageConstant
                                                                            .imgArrowleft,
                                                                        height: getSize(
                                                                            20.00),
                                                                        width:
                                                                            getSize(24.00)),
                                                                  )),
                                                            
                                                            ])),
                                                    Container(
                                                        height:
                                                            getSize(24.00),
                                                        width:
                                                            getSize(24.00),
                                                        margin: getMargin(
                                                            top: 5,
                                                            bottom: 5))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                left: 46,
                                                  top: 6, right: 0),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    CommonImageView(
                                                        svgPath:
                                                            ImageConstant
                                                                .imgSettings,
                                                        height:
                                                            getVerticalSize(
                                                                59.00),
                                                        width:
                                                            getHorizontalSize(
                                                                60.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 10,
                                                            top: 11,
                                                            bottom: 9),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      right:
                                                                          4),
                                                                  child: Text(
                                                                      "lbl_40"
                                                                          .tr,
                                                                      overflow: TextOverflow
                                                                          .ellipsis,
                                                                      textAlign: TextAlign
                                                                          .left,
                                                                      style:
                                                                          AppStyle.txtPoppinsLight24)),
                                                              Text(
                                                                  "lbl_riyadh"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular10)
                                                            ])),
                                                    Container(
                                                        height:
                                                            getVerticalSize(
                                                                30.00),
                                                        width:
                                                            getHorizontalSize(
                                                                22.00),
                                                        margin: getMargin(
                                                            left: 1,
                                                            top: 11,
                                                            bottom: 18),
                                                        child: Stack(
                                                            alignment:
                                                                Alignment
                                                                    .topLeft,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              10),
                                                                      child: Text(
                                                                          "lbl_c".tr,
                                                                          overflow: TextOverflow.ellipsis,
                                                                          textAlign: TextAlign.left,
                                                                          style: AppStyle.txtPoppinsLight24))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  child: Container(
                                                                      height: getSize(
                                                                          5.00),
                                                                      width: getSize(
                                                                          5.00),
                                                                      margin: getMargin(
                                                                          top:
                                                                              3,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              0),
                                                                      decoration: BoxDecoration(
                                                                          borderRadius: BorderRadius.circular(getHorizontalSize(2.50)),
                                                                          border: Border.all(color: ColorConstant.whiteA700, width: getHorizontalSize(1.00)))))
                                                            ]))
                                                  ])))
                                    ]))
                          ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(

    
                   
                                        decoration:BoxDecoration(    borderRadius: BorderRadius.only(
      topRight: Radius.circular(15.0),
      topLeft: Radius.circular(15.0),
    ),),

                              height: getVerticalSize(835.00),
                              width: getHorizontalSize(430.00),
                              margin: getMargin(top: 0),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                       
                                              
                                              
                                               Container(
                         
                                              height: 900,
                                              child: FutureBuilder<LocationData?>(
                                                  future: HomeModel().currentLocation(),
                                                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapchat) {
                                                    if (snapchat.hasData) {
                                                      final LocationData currentLocation = snapchat.data;
                                                      return SfMaps(
                                                        layers: [
                                                          MapTileLayer(
                                                            initialFocalLatLng: MapLatLng(
                                                                currentLocation.latitude!, currentLocation.longitude!),
                                                            initialZoomLevel: 10,
                                                            initialMarkersCount: 1,
                                                            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                                            markerBuilder: (BuildContext context, int index) {
                                                              return MapMarker(
                                                                latitude: currentLocation.latitude!,
                                                                longitude: currentLocation.longitude!,
                                                                child: Image.asset('assets/images/marker.png'),
                                                                size: Size(180, 180),
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      );
                                                    }
                                                    return Center(child: CircularProgressIndicator());
                                                  },
                                                ),
                                            ),
                                  


                                  ])
                                  
                                  
                                  
                                  )))
                ])));
  }

  onTapTxtBook() {
    Get.toNamed(AppRoutes.rechargeScreen);
  }

  onTapColumncar() {
    Get.toNamed(AppRoutes.carsScreen);
  }

  logout() async {

  



     final FirebaseAuth _auth = FirebaseAuth.instance;



sucess() async {


      
    
Get.back();  


Get.toNamed(AppRoutes.languageScreen);

}
failure(){


    Get.back();
     alertbox(context, 'Connection Failed', 'Please Check your Internet Connection', 'images/alerts.gif');
     return null;
}





await _auth.signOut().then((value) => sucess()).timeout(const Duration(seconds: 10)).catchError((error, stackTrace) => failure());;



  }
}
