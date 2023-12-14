import 'package:flutter/material.dart';

class TextFormField extends StatelessWidget {
  const TextFormField({super.key, required InputDecoration decoration });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
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
              TextStyle(fontSize: 16, color: Colors.black26),
              hintText: "example@gmail.com"),
        ),
      ),
    );
  }
}
