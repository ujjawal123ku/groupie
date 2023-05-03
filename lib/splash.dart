import 'package:flutter/material.dart';
import 'package:groupie/provider/auth_provider.dart';
import 'package:groupie/splashclass.dart';
import 'package:provider/provider.dart';


class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  Splash splash= Splash();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splash.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    final ap=Provider.of<authProvider>(context,listen:false);
    return const Scaffold(

      backgroundColor: Colors.blue,

      body: Center(child: Text('Welcome Back',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.indigo),)),

    );
  }
}
