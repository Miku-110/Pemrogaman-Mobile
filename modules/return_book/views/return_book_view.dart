import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/return_book_controller.dart';

class ReturnBookView extends StatelessWidget {
  final ReturnBookController controller = Get.put(ReturnBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengembalian Buku'),
      ),
      body: Obx(() {
        // Jika tidak ada buku yang dipinjam
        if (controller.borrowedBooks.isEmpty) {
          return Center(
            child: Text(
              'Tidak ada buku yang dipinjam.',
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        // Daftar buku yang dipinjam
        return ListView.builder(
          itemCount: controller.borrowedBooks.length,
          itemBuilder: (context, index) {
            var book = controller.borrowedBooks[index];
            return Card(
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(book['title'] ?? ''),
                subtitle: Text(book['author'] ?? ''),
                trailing: ElevatedButton(
                  onPressed: () => controller.returnBook(book['id']!),
                  child: Text('Kembalikan'),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}