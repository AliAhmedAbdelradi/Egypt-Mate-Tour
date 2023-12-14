import 'package:flutter/material.dart';

class IconButtonLeading extends StatelessWidget {


  Function navigte;
  IconButtonLeading(this.navigte);

  @override
  Widget build(BuildContext context) {
    return   IconButton(


        onPressed: () {
         navigte();

        },
        icon:   Icon(Icons.arrow_back),
        color: Colors.black,
        iconSize: 25);
  }
}
