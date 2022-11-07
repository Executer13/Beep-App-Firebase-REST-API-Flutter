import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color whiteA7007f = fromHex('#ffffff');

  static Color bluegray50 = fromHex('#edeef0');

  static Color green100 = fromHex('#cff0dd');

  static Color indigoA200 = fromHex('#6e6bf3');

  static Color limeA100 = fromHex('#ffff79');

  static Color indigoA100 = fromHex('#9997fb');

  static Color gray50 = fromHex('#fafafa');

  static Color red100 = fromHex('#ffd9d9');

  static Color yellow500 = fromHex('#ffe642');

  static Color amberA700 = fromHex('#ffa707');

  static Color black900 = fromHex('#000000');

  static Color lightGreen600 = fromHex('#69b935');

  static Color indigo50000 = fromHex('#003f3cc7');

  static Color cyan40054 = fromHex('#5417c4d8');

  static Color redA700 = fromHex('#da0000');

  static Color gray507f = fromHex('#7ff4f9ff');

  static Color gray501 = fromHex('#a9aca8');

  static Color black9004c = fromHex('#4c000000');

  static Color gray500 = fromHex('#9b9b9b');

  static Color amber400 = fromHex('#ffc618');

  static Color amber401 = fromHex('#ffd621');

  static Color amber700 = fromHex('#ff9c00');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#eaeaea');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray100 = fromHex('#f2f2f2');

  static Color bluegray900 = fromHex('#113544');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray200 = fromHex('#adbad3');

  static Color indigo502 = fromHex('#4845da');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo500 = fromHex('#3f3cc7');

  static Color cyan400 = fromHex('#18c4d8');

  static Color indigo501 = fromHex('#3e3bc7');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
