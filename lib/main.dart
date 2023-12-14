import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_app2/forget_password/first_screen/forget%20password.dart';
import 'package:tourism_app2/forget_password/second_screen/verify.dart';
import 'package:tourism_app2/forget_password/third_screen/create_new_password.dart';
import 'package:tourism_app2/login_screen/login.dart';
import 'package:tourism_app2/signup_screen/signup.dart';
import 'package:tourism_app2/splash_screen/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen .routeName,
      routes: {

        SplashScreen.routeName:(context) => const SplashScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        ForgetPassword.routeName: (context) => ForgetPassword(),
        Verify.routeName: (context) => const Verify(),
        CreateNewPass.routeName: (context) => CreateNewPass(),
      },
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
          ),
          textTheme: TextTheme(
              bodyLarge: GoogleFonts.radioCanada(
                  fontSize: 25, fontWeight: FontWeight.bold,color: Colors.black),
          bodyMedium: GoogleFonts.radioCanada(
              fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
          bodySmall:  GoogleFonts.radioCanada(
              fontSize: 15, fontWeight: FontWeight.bold,color: Colors.black26)),

      ),
    );
  }
}
