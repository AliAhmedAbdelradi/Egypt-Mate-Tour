import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

import '../constants/IconButtonLeading.dart';
import '../constants/btn_verify.dart';

class CreateNewPass extends StatefulWidget {
  static const String routeName = "pass";

  @override
  State<CreateNewPass> createState() => _CreateNewPassState();
}

class _CreateNewPassState extends State<CreateNewPass> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
            Image(
              image: AssetImage("assets/images/logo.png"),
              height: 40,
              width: 40,
            )
          ],
          leading: IconButtonLeading(() {
            Navigator.pop(context);
          }),
          title: Text(
            "Forget Password",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: EdgeInsets.all(60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  "Create a New Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    width: 312,
                    height: 55,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusColor: Colors.black26,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 18,
                          ),
                          suffixIconColor: Colors.black26,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintStyle: TextStyle(
                              height: 3.5, fontSize: 16, color: Colors.black26),
                          hintText: "Enter New Password"),
                    ),
                  ),
                  Container(
                    width: 312,
                    height: 55,
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1)),
                          focusColor: Colors.black26,
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 18,
                          ),
                          suffixIconColor: Colors.black26,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintStyle: TextStyle(
                              height: 3.5, fontSize: 16, color: Colors.black26),
                          hintText: "Cofirm New Password"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "2 of 2",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 8,
                    color: Color(0xFF89C9FF),
                    height: 8,
                  )),
                  Expanded(
                      child: Divider(
                    thickness: 8,
                    color: Color(0xFF89C9FF),
                    height: 8,
                  ))
                ],
              ),
              SizedBox(
                height: 20,
              ),

              BtnVerify(
                  (){
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.rightSlide,
                        title: 'Congratulations !',titleTextStyle: TextStyle(fontSize: 25),
                        desc: 'Password Reset successful\n You’ll be redirected to the \n login screen now',
                        descTextStyle:TextStyle(fontSize: 15),

                    btnOkOnPress: () {},
                    )..show();


                  }

              )
            ],
          ),
        ),
      ),
    );
  }


 }


