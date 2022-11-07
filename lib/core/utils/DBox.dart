
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

import 'color_constant.dart';

alertbox(context,text,subtext,path){



  showDialog(
  context: context,builder: (_) => AssetGiffyDialog(
    buttonCancelColor: ColorConstant.indigo501,
    onlyCancelButton: true,
    image: Image(image: AssetImage(path)),
    title: Text(text,
            style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.w600),
    ),
    description: Text(subtext,
          textAlign: TextAlign.center,
          style: TextStyle(),
        ),
    entryAnimation: EntryAnimation.BOTTOM,
    buttonCancelText: Text('OK',style: TextStyle(color: Colors.white)),
  ) );
}
