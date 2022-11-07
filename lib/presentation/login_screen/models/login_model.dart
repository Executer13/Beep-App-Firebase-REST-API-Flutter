import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginModel {

FirebaseAuth _auth = FirebaseAuth.instance;
String phone='+923027733780';

 


Future<UserCredential?> signin(String email, String password) async {
  try {

    print(email+'  '+password);
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);

    return userCredential;
  } catch (e) {
    print(e);
    return null;
  }
}



Future<String> getPhoneNumber()  async {
 
   await
      FirebaseFirestore.instance.collection('DB').doc(_auth.currentUser!.uid).get()
    .then((value) {
      

      
             phone= value.data()!['phone'];
            
      
       print("value is "+phone);



       // Access your after your get the data
     });


            return phone;

  }


}
