import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yasan_s_application1/core/utils/DBox.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yasan_s_application1/routes/app_routes.dart';

class SignUpItemModel {
FirebaseAuth _auth = FirebaseAuth.instance;

Future<UserCredential?> createAccount(BuildContext context,String email, String password,String name,String phone) async {

sucess() async {


      Get.back();
     alertbox(context,'Verification Email Sent',
                    "Email Verification Sent, Please verify the Email First",'assets/gif/mail-verification.gif');
                    Future.delayed(Duration(seconds: 2));
                    Get.toNamed(AppRoutes.loginScreen);

}

failure(String e){


      Get.back();
     alertbox(context, 'Signup Failed', e, 'images/alerts.gif');
     return null;
}





  try {
    
    UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    userCredential.user?.sendEmailVerification();

    final CollectionReference users =
      FirebaseFirestore.instance.collection('DB');
  
    Map<String, dynamic> g = {
      "email": email,
      "Pass": password,
      "phone":phone,
      "Name":name,
      
      };
    users.doc(_auth.currentUser!.uid).set(g);
  
    sucess();


  } on FirebaseAuthException catch (e) {
    print('aag'+e.toString());
    
    failure(e.toString());
    return null;
  }
}





}
