import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/Footballplayercontroller.dart';
import '../controllers/editplayer_controller.dart';
import 'package:flutter2/model/footbalplayer_model.dart';

class EditPlayerPage extends StatelessWidget {
  EditPlayerPage({super.key});

  final editPlayerController = Get.put(EditPlayerController());


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Player"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: editPlayerController.name,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: editPlayerController.number,
              decoration: const InputDecoration(labelText: 'Nomor'),
            ),
            TextField(
              controller: editPlayerController.position,
              decoration: const InputDecoration(labelText: 'Posisi'),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: editPlayerController.save,
                child: const Text('save'),
              
            ),
          ],
        ),
      ),
    );
  }
}

