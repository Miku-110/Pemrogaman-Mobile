import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/delete_book_controller.dart';

class DeleteBookView extends StatelessWidget {
  final DeleteBookController controller = Get.put(DeleteBookController());

  @override
  Widget build(BuildContext context) {
    final bookData = Get.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hapus Buku'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Apakah Anda yakin ingin menghapus buku ini?'),
            SizedBox(height: 20),
            Text(
              bookData['title']!,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => controller.deleteBook(bookData['id']!),
              child: Text('Hapus'),
            ),
          ],
        ),
      ),
    );
  }
}
