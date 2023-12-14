import 'package:flutter/material.dart';
import 'package:tourism_app2/forget_password/constants/shape_message.dart';
import 'package:tourism_app2/forget_password/second_screen/verify.dart';

import '../constants/Btn_next.dart';
import '../constants/IconButtonLeading.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName = "forget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image(image: AssetImage("assets/images/logo.png"), height: 40,width: 40,)

        ],
         leading: IconButtonLeading(() {
    Navigator.pop(context);
    }),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [

              const Center(
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Image(
                image: AssetImage("assets/images/Picture.png"),
                width: 180,
                height: 241,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Where would you like to receive a ",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                    Text(
                      "Verification Code ?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
               MessageShape(txt: "via SMS", icon: Icons.message, txt2: "+1 123********99"),
              const SizedBox(
                height: 10,
              ),
             MessageShape(txt: "via Email", icon: Icons.mail, txt2: "lauran****@email.com9"),

              const SizedBox(height: 20,),
              BtnNExt((){
                Navigator.pushNamed(context, Verify.routeName);

              })
            ],
          ),
        ),
      ),
    );
  }
}
