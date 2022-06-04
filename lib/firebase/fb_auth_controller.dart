

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


import '../modle/fb_response.dart';
typedef UserStateCallback = void Function({required bool loggedIn});
class FbAuthController {

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  Future<FbResponse> CreateAccount(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth.
      createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        await userCredential.user!.sendEmailVerification();
        return FbResponse(message: 'Account Created Successfuly', states: true);
      }
    } on FirebaseAuthException catch (e) {
    return  _ControlFirebaseException(e);

      //هان تخصييص نوع الاكسبشن

    } catch (e) {
      //هان الاشي الي مش متوقعه

    }     return FbResponse(message: 'somthing went worng', states: false);
  }


  FbResponse _ControlFirebaseException(FirebaseException exception) {
    print('Message:${exception.message}');
    if (exception.code == 'email-already-in-use') {

    } else if (exception.code == 'invalid-email') {

    } else if (exception.code == 'operation-not-allowed') {

    } else if (exception.code == 'weak-password') {


    } else if (exception.code == 'user-disabled') {


    } else if (exception.code == 'user-not-found') {


    } else if (exception.code == 'wrong-password') {


    } else if (exception.code == 'auth/invalid-email') {


    } else if (exception.code == 'auth/user-not-email') {


    }
    return FbResponse(
        message: exception.message ?? 'Error occured!', states: false);
  }

  Future<FbResponse> SignIn({required String email, required String password}) async {
    try {
      UserCredential userCredential = await _firebaseAuth.
      signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        String message = userCredential.user!.emailVerified
            ? 'logged In succufly'
            : 'your must verify your email';
        return FbResponse(
            message: message, states: userCredential.user!.emailVerified);
      }
    } on FirebaseAuthException catch (e) {
      return  _ControlFirebaseException(e);
    } catch (e) {

    }return FbResponse(message: 'somthing went worng', states: false);
  }

//فحص null
  bool get loggedIn => _firebaseAuth.currentUser != null;
  StreamSubscription checkUserStatus(UserStateCallback userStateCallback) {
    return _firebaseAuth.authStateChanges().listen((User? user) {
      userStateCallback(loggedIn: user != null);
    });
  }
  Future<FbResponse> forgetPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return FbResponse(
          message: 'Password reset email sent successfully', states: true,);
    } on FirebaseAuthException catch (e) {
      return _ControlFirebaseException(e);
    } catch (e) {
      //
    }
    return FbResponse(message: 'Something went wrong', states: false);
  }

  Future <void> Singout()async{
    await _firebaseAuth.signOut();
  }










}