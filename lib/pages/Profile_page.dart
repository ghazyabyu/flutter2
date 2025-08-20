import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  final TextEditingController _namaController =
      TextEditingController(text: "Ghazy Abyu Pandega");
  final TextEditingController _kelasController =
      TextEditingController(text: "11 PPLG 2");
  final TextEditingController _umurController =
      TextEditingController(text: "16");
  final TextEditingController _ttlController =
      TextEditingController(text: "Jepara, 20 November 2008");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: const InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _kelasController,
              decoration: const InputDecoration(
                labelText: "Kelas",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _umurController,
              decoration: const InputDecoration(
                labelText: "Umur",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _ttlController,
              decoration: const InputDecoration(
                labelText: "Tempat, Tanggal Lahir",
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
