import 'dart:convert';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import '../cars_screen/widgets/cars_item_widget.dart';
import 'controller/cars_controller.dart';
import 'models/cars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';
import 'package:yasan_s_application1/widgets/custom_button.dart';
import 'package:http/http.dart' as http;
import 'models/cars_model.dart';


class Model {
  final dynamic price;
  final String image;
  final int title;

  Model({required this.price, required this.image, required this.title});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      price: json['price'],
      image: json['image'],
      title: json['id'],
    );
  }


 }


class CarsScreen extends StatefulWidget {
  

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {

 CarsController controller = Get.put(CarsController());

   // The list that contains information about photos
  List _loadedPhotos = [];
 late bool isLoading ;
  // The function that fetches data from the API
  Future<void> _fetchData() async {

setState(() {
      isLoading = false;
    });

    const apiUrl = 'https://fakestoreapi.com/products';

    final response = await http.get(Uri.parse(apiUrl));
    final data =(json.decode(response.body) as List)
          .map((data) => Model.fromJson(data))
          .toList();
    print(data);

    setState(() {
      _loadedPhotos = data;
       isLoading = true;
    });
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
    
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Container(
                height:MediaQuery.of(context).size.height,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                          
                                  children: [
                                Container(
                                  color: ColorConstant.indigo501,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize:
                                                    MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 20, bottom: 20,left:160),
                                                      child: Text(
                                                          "lbl_my_cars".tr,
                                                          overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsSemiBold18)),
                                                  CustomButton(
                                                      width: 86,
                                                      text: "lbl_add".tr,
                                                      margin:
                                                          getMargin(left: 76),
                                                      
                                                      fontStyle:
                                                          ButtonFontStyle
                                                              .PoppinsMedium16,
                                                      prefixWidget: Container(
                                                          margin: getMargin(
                                                              right: 3),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGrid)))
                                                ]),
                                         
                                          ])),
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height:50,
                                      color: ColorConstant.indigo501),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 15),
                                            decoration: AppDecoration.fillBluegray50
                                                .copyWith(
                                                    borderRadius: BorderRadiusStyle
                                                        .customBorderTL20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Align(
                                                      alignment: Alignment.center,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 21,
                                                              right: 20),
                                                          decoration: AppDecoration
                                                              .outlineBlack9000c
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder10),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize.max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 13,
                                                                        top: 12,
                                                                        bottom: 13),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                10.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant
                                                                                    .imgBmwmy237serie,
                                                                            height: getSize(
                                                                                106.00),
                                                                            width: getSize(
                                                                                106.00),
                                                                            fit: BoxFit
                                                                                .cover))),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                17,
                                                                            top: 17,
                                                                            bottom:
                                                                                24),
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
                                                                                      10),
                                                                              child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    CommonImageView(imagePath: ImageConstant.img2048pxbmw1, height: getSize(20.00), width: getSize(20.00)),
                                                                                    Padding(padding: getPadding(left: 9, top: 1), child: Text("lbl_bmw".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold16))
                                                                                  ])),
                                                                          Padding(
                                                                              padding: getPadding(
                                                                                  top:
                                                                                      3,
                                                                                  right:
                                                                                      10),
                                                                              child: Text(
                                                                                  "lbl_7_series".tr,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: AppStyle.txtPoppinsRegular13)),
                                                                          Container(
                                                                              width: getHorizontalSize(
                                                                                  225.00),
                                                                              margin: getMargin(
                                                                                  top:
                                                                                      16),
                                                                              child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Text("lbl_color".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14),
                                                                                    Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Text("lbl_plate_no".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14),
                                                                                      Padding(padding: getPadding(left: 35), child: Text("lbl_year".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14))
                                                                                    ])
                                                                                  ])),
                                                                          Align(
                                                                              alignment:
                                                                                  Alignment.center,
                                                                              child: Padding(
                                                                                  padding: getPadding(top: 6, right: 4),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                    Padding(padding: getPadding(top: 4, bottom: 2), child: CommonImageView(svgPath: ImageConstant.imgCar, height: getVerticalSize(7.00), width: getHorizontalSize(18.00))),
                                                                                    Padding(padding: getPadding(left: 6), child: Text("lbl_black".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                                    Padding(padding: getPadding(left: 42), child: Text("lbl_elx_5987".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Gray501)),
                                                                                    Padding(padding: getPadding(left: 42), child: Text("lbl_2022".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Gray501))
                                                                                  ])))
                                                                        ]))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 13, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                                decoration: AppDecoration
                                                                    .outlineBlack9000c
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
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
                                                                              top:
                                                                                  12,
                                                                              bottom:
                                                                                  13),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                  0.50)),
                                                                              child: CommonImageView(
                                                                                  imagePath: ImageConstant.img2020audia5co,
                                                                                  height: getVerticalSize(106.00),
                                                                                  width: getHorizontalSize(1.00),
                                                                                  fit: BoxFit.cover))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  18,
                                                                              right:
                                                                                  29,
                                                                              bottom:
                                                                                  24),
                                                                          child: Column(
                                                                              mainAxisSize: MainAxisSize
                                                                                  .min,
                                                                              crossAxisAlignment: CrossAxisAlignment
                                                                                  .start,
                                                                              mainAxisAlignment:
                                                                                  MainAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                    padding: getPadding(right: 10),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                      Padding(padding: getPadding(top: 2, bottom: 4), child: CommonImageView(imagePath: ImageConstant.imgAudilogof899d, height: getVerticalSize(13.00), width: getHorizontalSize(21.00))),
                                                                                      Padding(padding: getPadding(left: 8), child: Text("lbl_audi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold16))
                                                                                    ])),
                                                                                Padding(
                                                                                    padding: getPadding(top: 3, right: 10),
                                                                                    child: Text("lbl_a5_coupe".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular13)),
                                                                                Container(
                                                                                    width: getHorizontalSize(225.00),
                                                                                    margin: getMargin(top: 15),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      Text("lbl_color".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14),
                                                                                      Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                        Text("lbl_plate_no".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14),
                                                                                        Padding(padding: getPadding(left: 35), child: Text("lbl_year".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold14))
                                                                                      ])
                                                                                    ])),
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: Padding(
                                                                                        padding: getPadding(top: 6, right: 8),
                                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                          Padding(padding: getPadding(top: 4, bottom: 2), child: CommonImageView(svgPath: ImageConstant.imgCar7X18, height: getVerticalSize(7.00), width: getHorizontalSize(18.00))),
                                                                                          Padding(padding: getPadding(left: 6), child: Text("lbl_green".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12)),
                                                                                          Padding(padding: getPadding(left: 37), child: Text("lbl_elx_5987".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Gray501)),
                                                                                          Padding(padding: getPadding(left: 42), child: Text("lbl_2021".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12Gray501))
                                                                                        ])))
                                                                              ]))
                                                                    ])),
                                                            Container(
                                                                margin: getMargin(
                                                                    left: 16),
                                                                decoration: AppDecoration
                                                                    .fillRed100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  47,
                                                                              right:
                                                                                  16),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant
                                                                                  .imgTrash,
                                                                              height: getSize(
                                                                                  24.00),
                                                                              width:
                                                                                  getSize(24.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  9,
                                                                              top:
                                                                                  21,
                                                                              right:
                                                                                  9,
                                                                              bottom:
                                                                                  25),
                                                                          child: Text(
                                                                              "lbl_delete"
                                                                                  .tr,
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style:
                                                                                  AppStyle.txtPoppinsSemiBold12))
                                                                    ])),
                                                            Container(
                                                                margin: getMargin(
                                                                    left: 8),
                                                                decoration: AppDecoration
                                                                    .fillGreen100
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  47,
                                                                              right:
                                                                                  16),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant
                                                                                  .imgEdit,
                                                                              height: getSize(
                                                                                  24.00),
                                                                              width:
                                                                                  getSize(24.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  17,
                                                                              top:
                                                                                  21,
                                                                              right:
                                                                                  17,
                                                                              bottom:
                                                                                  25),
                                                                          child: Text(
                                                                              "lbl_edit"
                                                                                  .tr,
                                                                              overflow: TextOverflow
                                                                                  .ellipsis,
                                                                              textAlign: TextAlign
                                                                                  .left,
                                                                              style:
                                                                                  AppStyle.txtPoppinsSemiBold12Lightgreen600))
                                                                    ]))
                                                          ])),
                                                  Align(
                                                      alignment: Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 20,
                                                              top: 13,
                                                              right: 10),
                                                          child:
                                                          
                                                          isLoading==false
                    ? Center(
                        child: CircularProgressIndicator()
                      )
                    // The ListView that displays photos
                    : 
                                                        
                                                          
                                             ListView.builder(
                                              scrollDirection: Axis.vertical,
                  shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
                    itemCount: _loadedPhotos.length,
                    itemBuilder: (BuildContext context, index) {
                     return        Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        top: 6.5,
                        bottom: 6.5,
                      ),
                      decoration: AppDecoration.outlineBlack9000c.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                Padding(
                  padding: getPadding(
                    left: 13,
                    top: 12,
                    bottom: 13,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Image.network( _loadedPhotos[index].image, width:105
                              ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 18,
                    right: 15,
                    bottom: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 4,
                                bottom: 5,
                              ),
                              child:Image.network( _loadedPhotos[index].image, width:11
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                _loadedPhotos[index].title.toString(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                          top: 3,
                          right: 10,
                        ),
                        child: Text(_loadedPhotos[index].price.toString(),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular13,
                        ),
                      ),
                      
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            221.00,
                          ),
                          margin: getMargin(
                            left: 1,
                            top: 6,
                            right: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 2,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgCar1,
                                      height: getVerticalSize(
                                        7.00,
                                      ),
                                      width: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 6,
                                    ),
                                    child: Text(
                                      "lbl_red".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "lbl_elx_5987".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular12Gray501,
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 42,
                                    ),
                                    child: Text(
                                      "lbl_2022".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsRegular12Gray501,
                                    ),
                                  ),
                                ],
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
                  );
                    }
                  )
                      
                                                          
                                                        )),
                                                  
                                  ]))),
                                  ],
                                )
                              ])))
                    ]),
              ),
            )));
  }

  onTapColumnhome() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxtBook() {
    Get.toNamed(AppRoutes.rechargeScreen);
  }
}
