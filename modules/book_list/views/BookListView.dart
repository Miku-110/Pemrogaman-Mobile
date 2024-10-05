import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/book_list_controller.dart';

class BookListView extends StatelessWidget {
  final BookListController controller = Get.put(BookListController());

  @override
  Widget build(BuildContext context) {
    controller.fetchBooks();  // Memanggil fungsi fetch data saat tampilan dibangun

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
        actions: [
          IconButton(
            icon: Icon(Icons.book),  // Icon buku untuk daftar buku yang dipinjam
            onPressed: () {
              // Navigasi ke halaman Borrowed Book
              Get.toNamed('/borrowed_book');
            },
          ),
        ],
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());  // Loading Indicator
        }

        // ListView untuk menampilkan daftar buku
        return ListView.builder(
          itemCount: controller.bookList.length,
          itemBuilder: (context, index) {
            var book = controller.bookList[index];
            return ListTile(
              title: Text(book['title']!),
              subtitle: Text(book['author']!),
              onTap: () => Get.toNamed('/book_detail', arguments: book),  // Navigasi ke detail buku
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add_book'),  // Navigasi ke form tambah buku
        child: Icon(Icons.add),
      ),
    );
  }
}
