import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/ContactController.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  final contactController = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Contact Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: contactController.nameController,
                    decoration: const InputDecoration(labelText: 'Name'),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: contactController.addName,
                  child: const Text("Save"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Obx(() {
                if (contactController.names.isEmpty) {
                  return const Center(child: Text("Belum ada data"));
                }
                return ListView.builder(
                  itemCount: contactController.names.length,
                  itemBuilder: (context, index) {
                    final name = contactController.names[index];
                    return ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(name), 
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit, color: Colors.blue),
                            onPressed: () {
                              contactController.showUpdateDialog(
                                context,
                                name,
                                index,
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              // Konfirmasi sebelum menghapus
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text("Konfirmasi"),
                                  content: Text(
                                      "Apakah kamu yakin ingin menghapus '$name'?"),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(ctx).pop(), // batal
                                      child: const Text("Batal"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        contactController.deleteName(index);
                                        Navigator.of(ctx).pop();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content:
                                                  Text("$name berhasil dihapus")),
                                        );
                                      },
                                      child: const Text("Hapus"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
