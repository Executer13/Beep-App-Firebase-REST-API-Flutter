import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:yasan_s_application1/presentation/Navbar/Navbar.dart';
import 'package:yasan_s_application1/presentation/home_screen/home_screen.dart';
import 'package:yasan_s_application1/presentation/language_screen/language_screen.dart';




class VerifyCheck extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser == null) {
      return LanguageScreen();
    } else {
      return Navbar();
    }
  }
}
