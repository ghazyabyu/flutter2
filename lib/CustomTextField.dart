import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class Customtextfield extends StatelessWidget {


  final TextEditingController controller;
  final String label;
  final Color labelcolor; 
  final bool pass;

  const Customtextfield({super.key, required this.controller
  ,required this.label,required this.labelcolor, required this.pass});

bool? get isNumber => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        keyboardType: (isNumber ?? false) ? TextInputType.number : TextInputType.text,
        inputFormatters: (isNumber ?? false) ?
        [FilteringTextInputFormatter.digitsOnly] : [],
        controller: controller,
        obscureText: pass,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: labelcolor)
        ),
      ),
    );
  }
}