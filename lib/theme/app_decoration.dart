import 'package:flutter/material.dart';
import 'package:yasan_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGreen100 => BoxDecoration(
        color: ColorConstant.green100,
      );
  static BoxDecoration get fillLightgreen600 => BoxDecoration(
        color: ColorConstant.lightGreen600,
      );
  static BoxDecoration get fillCyan400 => BoxDecoration(
        color: ColorConstant.cyan400,
      );
  static BoxDecoration get fillIndigo500 => BoxDecoration(
        color: ColorConstant.whiteA700,

        
      );
  static BoxDecoration get outlineIndigoA2001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
        color: ColorConstant.bluegray50,
      );
  static BoxDecoration get fillRed100 => BoxDecoration(
        color: ColorConstant.red100,
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack9000c => BoxDecoration(
        color: ColorConstant.gray50,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9000c1 => BoxDecoration(
        color: ColorConstant.lightGreen600,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillLightgreen600 => BoxDecoration(
        color: ColorConstant.lightGreen600,
      );
  static BoxDecoration get gradientIndigo500Indigo50000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            -3.0616171314629196e-17,
          ),
          end: Alignment(
            0.5,
            0.9999999999999999,
          ),
          colors: [
            ColorConstant.indigo500,
            ColorConstant.indigo501,
            ColorConstant.indigo50000,
          ],
        ),
      );
  static BoxDecoration get outlineIndigoA200 => BoxDecoration(
        color: ColorConstant.indigo502,
        border: Border.all(
          color: ColorConstant.indigoA200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineCyan400 => BoxDecoration(
        color: ColorConstant.cyan40054,
        border: Border.all(
          color: ColorConstant.cyan400,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
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
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    getHorizontalSize(
      6.00,
    ),
  );

  static BorderRadius roundedBorder34 = BorderRadius.circular(
    getHorizontalSize(
      34.50,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius roundedBorder0 = BorderRadius.circular(
    getHorizontalSize(
      0.50,
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );

  static BorderRadius txtCircleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius customBorderLR200 = BorderRadius.only(
    topRight: Radius.circular(
      getHorizontalSize(
        200.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        200.00,
      ),
    ),
  );
}
