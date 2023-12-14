import 'package:flutter/material.dart';

class BtnNExt extends StatelessWidget {

  Function Next;
  BtnNExt(this.Next, {super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 40,
      child: ElevatedButton(
          onPressed: () {
            Next();

          },
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Color(0xFFF89C9FF)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28.5)))),
          child: const Text(
            "Next",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
