import '../controller/cars_controller.dart';
import '../models/cars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CarsItemWidget extends StatelessWidget {
  CarsItemWidget(this.carsItemModelObj);

  CarsItemModel carsItemModelObj;

  var controller = Get.find<CarsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
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
                child: CommonImageView(
                  imagePath: ImageConstant.imgHennesseyexorc,
                  height: getSize(
                    106.00,
                  ),
                  width: getSize(
                    106.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 18,
                right: 29,
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
                          child: CommonImageView(
                            imagePath: ImageConstant.imgChevroletpng,
                            height: getVerticalSize(
                              10.00,
                            ),
                            width: getHorizontalSize(
                              22.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Text(
                            "lbl_chevrolet".tr,
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
                    child: Text(
                      "msg_hennessey_camar".tr,
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
}
