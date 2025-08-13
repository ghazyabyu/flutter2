import 'package:flutter/material.dart';
import 'package:flutter2/CustomButton.dart';
import 'package:flutter2/CustomTextField.dart';
import 'package:flutter2/controllers/Calculator_Controller.dart';
import 'package:flutter2/pages/Football_player.dart';
import 'package:flutter2/routes/routes.dart';
import 'package:get/get.dart';

class Calculator extends StatelessWidget {
  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        children: [
          Customtextfield(
            controller: calculatorController.txtangka1,
            label: "input angka 1",
            labelcolor: Colors.green,
            pass: false,
          ),
          Customtextfield(
            controller: calculatorController.txtangka2,
            label: "input angka 2",
            labelcolor: Colors.green,
            pass: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custombutton(
                myText: "+",
                myTextColor: Colors.deepOrangeAccent,
                onPressed: () {
                  calculatorController.tambah();
                },
              ),
              Custombutton(
                myText: "-",
                myTextColor: Colors.deepOrangeAccent,
                onPressed: () {
                  calculatorController.kurang();
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Custombutton(
                myText: "*",
                myTextColor: Colors.deepOrangeAccent,
                onPressed: () {
                  calculatorController.kali();
                },
              ),
              Custombutton(
                myText: "/",
                myTextColor: Colors.deepOrangeAccent,
                onPressed: () {
                  calculatorController.bagi();
                },
              ),
            ],
          ),

          SizedBox(
            height: 50,
            child: Obx(() {
              return Text(
                "Hasil: ${calculatorController.textresult.value}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              );
            }),
          ),
          SizedBox(height: 10),
          Custombutton(
            myText: "clear",
            myTextColor: Colors.deepPurple,
            onPressed: calculatorController.clear,
          ),
          SizedBox(height: 10),
          Custombutton(
            myText: "move to football page",
            myTextColor: Colors.deepPurple,
            onPressed: () {
              Get.to(() => FootballPlayer());
            },
          ),
        ],
      ),
    );
  }
}
