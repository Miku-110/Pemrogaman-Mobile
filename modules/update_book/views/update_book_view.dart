import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/update_book_controller.dart';

class UpdateBookView extends StatelessWidget {
  final UpdateBookController controller = Get.put(UpdateBookController());

  @override
  Widget build(BuildContext context) {
    final bookData = Get.arguments as Map<String, String>;
    controller.setBookData(bookData);

    return Scaffold(
      appBar: AppBar(
        title: Text('Update Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => controller.title.value = value,
              controller: TextEditingController(text: controller.title.value),
              decoration: InputDecoration(labelText: 'Judul Buku'),
            ),
            TextField(
              onChanged: (value) => controller.author.value = value,
              controller: TextEditingController(text: controller.author.value),
              decoration: InputDecoration(labelText: 'Pengarang'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.updateBook(bookData['id']!),
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}