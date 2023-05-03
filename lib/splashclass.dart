import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groupie/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class Splash {
  Future<void> isLogin(BuildContext context) async {
    final ap = Provider.of<authProvider>(context,listen:false);
    Timer(Duration(seconds: 3), () {
      if (ap.isSignedIn == true) {
        Navigator.pushReplacementNamed(context, "/MyHomePage");
      } else {
        Navigator.pushReplacementNamed(context, "/signin");
      }
    });
  }
}
