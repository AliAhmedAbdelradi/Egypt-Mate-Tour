import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_app2/forget_password/third_screen/create_new_password.dart';
import '../constants/IconButtonLeading.dart';
import '../constants/btn_verify.dart';
import '../constants/code message.dart';
class Verify extends StatelessWidget {
  static const String routeName = "verify";

  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( actions: [
        Image(image: AssetImage("assets/images/logo.png"), height: 40,width: 40,)
      ],

            leading: IconButtonLeading(() {
    Navigator.pop(context);
    }),

          title: const Text(
            "Forget Password",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          )),
      body:  Padding(
        padding: EdgeInsets.all(48),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Verify",
                  style: GoogleFonts.radioCanada(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28
                  )
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Row(
                  children: [
                    Text(
                      "Please enter the code we sent you to email",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  CodeMassege(),
                  SizedBox(
                    width: 6.5,
                  ),
                  CodeMassege(),
                  SizedBox(
                    width: 6.5,
                  ),
                  CodeMassege(),
                  SizedBox(
                    width: 7,
                  ),
                  CodeMassege(),
                ],
              ),

              SizedBox(
                height: 50,
              ),
              Text(
                "Didn’t Receive the Code ?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Resend Code",
                style: TextStyle(
                    color: Color(0xFF89C9FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("1 of 2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(child: Divider(thickness: 8,color: Color(0xFF000000),height: 8, )),
                  Expanded(child: Divider(thickness: 8,height: 8 ,))
                ],

              ),
              SizedBox(height: 20,),
              BtnVerify((){
              Navigator.pushNamed(context, CreateNewPass.routeName);

              })


            ],
          ),
        ),
      ),
    );
  }
}
