import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_book_controller.dart';

class AddBookView extends StatelessWidget {
  final AddBookController controller = Get.put(AddBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => controller.title.value = value,
              decoration: InputDecoration(labelText: 'Judul Buku'),
            ),
            TextField(
              onChanged: (value) => controller.author.value = value,
              decoration: InputDecoration(labelText: 'Penulis'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.addBook();  // Tambah buku ke daftar buku pinjaman
              },
              child: Text('Tambahkan Buku'),
            ),
          ],
        ),
      ),
    );
  }
}
