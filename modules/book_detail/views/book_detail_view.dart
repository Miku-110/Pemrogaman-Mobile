import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/book_detail_controller.dart';

class BookDetailView extends StatelessWidget {
  final BookDetailController controller = Get.put(BookDetailController());

  @override
  Widget build(BuildContext context) {
    // Ambil data buku yang dikirim sebagai argument dari routing
    final bookData = Get.arguments as Map<String, String>;
    controller.setBookData(bookData);

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku'),
      ),
      body: Obx(() {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Judul: ${controller.book['title']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Pengarang: ${controller.book['author']}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      }),
    );
  }
}
