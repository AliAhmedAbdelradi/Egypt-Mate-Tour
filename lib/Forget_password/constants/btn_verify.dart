import 'package:flutter/material.dart';

class BtnVerify extends StatelessWidget {


  Function Verify;
  BtnVerify(this.Verify, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Verify();

          },
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xFFF89C9FF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.5)))),
          child: const Text(
            "Verify",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
