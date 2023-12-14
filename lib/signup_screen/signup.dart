import 'package:flutter/material.dart';
import 'package:tourism_app2/login_screen/login.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName="signup";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xFF89C9FF),
      body: Container(
        margin: const EdgeInsets.only(top: 120),
        width: 400,

        child: Card(
          color: Colors.white,
          shape: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Form(
            key: key,
            child: ListView(
              children: <Widget>[
                //Logo app
                Center(
                    child: Container(
                        child: const Image(
                          image: AssetImage("assets/images/logo.png"),
                          width: 60,
                          height: 60,
                        ))),
                //Text sign In
                Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ))),
                //Text Please Sign In to continue,
                Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10,top: 7),
                        child: const Text(
                          " Please Sign In to continue",
                          style: TextStyle(fontSize: 15, color: Colors.black26),
                        ))),

                //TextFormField Email
                Container(
                  width: 312,
                  height: 66,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),

                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Enter your Username"),
                  ),
                ),
                Container(
                  width: 312,
                  height: 66,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField( keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(

                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Enter your Email"),
                  ),
                ),
                Container(
                  width: 312,
                  height: 66,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    obscureText: true,
                    decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(color: Colors.black26)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Enter your Phone Name"),
                  ),
                ),


                //TextFormField Password
                Container(
                  width: 312,
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Enter Password"),
                  ),
                ),
                Container(
                  width: 312,
                  height: 55,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: false,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide:
                            BorderSide(color: Colors.black26, width: 1)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        hintStyle:
                        TextStyle(height: 3.5,fontSize: 16, color: Colors.black26),
                        hintText: "Confirm Password"),
                  ),
                ),
                //Remember me & check box & Forget password
               SizedBox(height: 30,),
                //Button sign in
                Container(
                    width: 100,
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                        style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(50)))),
                            backgroundColor:
                            MaterialStatePropertyAll(Color(0xFF89C9FF))),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {


                        })),
                //space
                const SizedBox(
                  height: 20,
                ),
                //sign in with google
                const Row(
                  children: [
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: 5,
                          endIndent: 5,
                        )),
                    Text(
                      "Or Connected With",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                    ),
                    Expanded(
                        child: Divider(
                          color: Colors.black,
                          indent: 5,
                          endIndent: 5,
                        )),
                  ],
                ),
                //space
                const SizedBox(
                  height: 10,
                ),
                //Google Logo
                const Center(
                    child: Image(
                        image: AssetImage("assets/images/Google Logo.png"))),
                //space
                const SizedBox(
                  height: 17,
                ),
                //Don’t have an account ?
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already  have an account ?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);

                      },
                      child: Text(" Sign In",style: TextStyle(
                          color: Color(0xFF89C9FF),
                          fontWeight: FontWeight.bold,
                          fontSize: 16) ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
