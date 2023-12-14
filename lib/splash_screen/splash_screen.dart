import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tourism_app2/signup_screen/signup.dart';

class SplashScreen extends StatefulWidget {
 static const String routeName="splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), SplashNavigator );
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF89C9FF),
      body: Center(child: Image(image: AssetImage("assets/images/logo.png"))),

    );
  }
  SplashNavigator(){
    Navigator.pushNamedAndRemoveUntil(context, SignUpScreen.routeName,(route) => false,);
  }
}
