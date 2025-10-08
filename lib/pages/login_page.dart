import 'package:flutter/material.dart';
import 'package:flutter2/CustomButton.dart';
import 'package:flutter2/CustomTextField.dart';
import 'package:flutter2/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
 LoginPage({super.key});

  final LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Customtextfield(controller: loginController.usernameController, label: "username", labelcolor: Colors.black, pass: false),
              Customtextfield(controller: loginController.passwordController, label: "password", labelcolor: Colors.black, pass: true),
              Custombutton(myText: "login", myTextColor: Colors.white, onPressed: () {
              loginController.login();
            })
            ],  
          ),
        ),
      ),
    );
  }
}