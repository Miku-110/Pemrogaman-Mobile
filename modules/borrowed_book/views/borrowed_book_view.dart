import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/borrowed_book_controller.dart';

class BorrowedBookView extends StatelessWidget {
  final BorrowedBookController controller = Get.put(BorrowedBookController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buku yang Dipinjam'),
      ),
      body: Obx(() {
        if (controller.borrowedBooks.isEmpty) {
          return Center(child: Text('Tidak ada buku yang dipinjam.'));
        }

        return ListView.builder(
          itemCount: controller.borrowedBooks.length,
          itemBuilder: (context, index) {
            var book = controller.borrowedBooks[index];
            return ListTile(
              title: Text(book['title']!),
              subtitle: Text(book['author']!),
            );
          },
        );
      }),
    );
  }
}
