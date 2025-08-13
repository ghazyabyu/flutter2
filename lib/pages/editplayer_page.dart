import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/Footballplayercontroller.dart';
import 'package:flutter2/model/footbalplayer_model.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  final Footballplayercontroller controller = Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController positionController = TextEditingController();

  EditPlayerPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    
    final player = controller.Players[index];

  
    nameController.text = player.name;
    numberController.text = player.number;
    positionController.text = player.position;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: numberController,
              decoration: const InputDecoration(labelText: 'Nomor'),
            ),
            TextField(
              controller: positionController,
              decoration: const InputDecoration(labelText: 'Posisi'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               
                controller.Players[index] = FootballPlayerModel(
                  name: nameController.text,
                  number: numberController.text,
                  position: positionController.text,
                  image: player.image,
                );

               
                controller.Players.refresh();

                
                Get.back();
              },
              child: const Text('save'),
            )
          ],
        ),
      ),
    );
  }
}

