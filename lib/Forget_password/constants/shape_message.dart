import 'package:flutter/material.dart';

class MessageShape extends StatelessWidget {
   MessageShape({super.key,  required this.txt, required this.icon, required this.txt2});
   String txt;
   IconData icon;
   String txt2;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 250,
      height: 78,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF89C9FF),width: 3),
          borderRadius: BorderRadius.circular(22),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Row(

          children: [
            Container(

                margin: EdgeInsets.only(bottom: 10,left: 5),
                child: Icon(
                  icon ,
                  color: Colors.black,
                  size: 20,
                )),
            SizedBox(
              width: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 15,right:2.5),
                    child: Text(
                      txt,
                      style: TextStyle(fontSize: 15,color: Color(0xFF868686)),
                    )),
                Container(
                    margin: EdgeInsets.only(bottom: 10,right:0),
                    child: Text(txt2,style: TextStyle(fontSize: 15) ,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
