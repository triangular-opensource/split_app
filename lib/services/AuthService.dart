import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:split_app/utils/Global.dart';

class AuthService {
  AuthService._();

  factory AuthService.getInstance() => _instance;
  static final AuthService _instance = AuthService._();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  Future<void> sendSms({required String phoneNumber}) async {
    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: Duration(seconds: 60),
      verificationCompleted: (AuthCredential credential) async {
        UserCredential result =
            await _firebaseAuth.signInWithCredential(credential);
        if (result.user != null) {
          print("Success");
        } else {
          print("Error");
        }
      },
      verificationFailed: (FirebaseAuthException exception) {
        print(exception);
      },
      codeSent: (verificationId, forceResendingToken) {
        verification  = verificationId;
      },
      codeAutoRetrievalTimeout: (verificationId) {
         verificationId  = verificationId;
      },
    );
  }

  logout() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print("Log Out in Auth Service");
      print(e);
      return e;
    }
  }
  
}
