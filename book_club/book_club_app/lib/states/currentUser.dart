import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class CurrentUser extends ChangeNotifier {
  late String _uid;
  late String _email;
  FirebaseAuth auth = FirebaseAuth.instance;

  String get getUID => _uid;

  String get getEmail => _email;

  Future<bool> signUpUser(String email, String password) async {
    bool retVal = false;

    try {
      UserCredential _authResult = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        retVal = true;
      }
    } catch (e) {
      print(e);
    }
    return retVal;
  }

  Future<bool> logInUser(String email, String password) async {
    bool retVal = false;

    try {
      UserCredential _authResult = await auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (_authResult.user != null) {
        _uid = _authResult.user!.uid;
        _email = _authResult.user!.email!;
        retVal = true;
      }
    } catch (e) {
      print(e);
    }
    return retVal;
  }
}
