import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class authProvider extends ChangeNotifier {
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  AuthProvider() {
    checkSign();
  }

  void checkSign()async{
    final SharedPreferences s =await SharedPreferences.getInstance();
    _isSignedIn =s.getBool("is_signedin")??false;
    notifyListeners();
  }

}