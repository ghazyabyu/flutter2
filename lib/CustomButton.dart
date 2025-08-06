import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String myText;
  final Color myTextColor;
  final VoidCallback onPressed;

   Custombutton({super.key,required this.myText,
  required this.myTextColor, required this.onPressed});
  


  @override
  Widget build(BuildContext context) {
    return ElevatedButton( 
      onPressed: onPressed
    , child: Text(myText, style: TextStyle(color: myTextColor),) );
   
  }
}