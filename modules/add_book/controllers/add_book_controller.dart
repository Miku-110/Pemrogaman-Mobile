import 'package:get/get.dart';
import 'package:tugas_1/app/modules/borrowed_book/controllers/borrowed_book_controller.dart';  // Import BorrowedBookController

class AddBookController extends GetxController {
  var title = ''.obs;
  var author = ''.obs;

  final BorrowedBookController borrowedBookController = Get.find(); // Ambil instance BorrowedBookController

  // Fungsi untuk menambah buku
  void addBook() {
    if (title.isNotEmpty && author.isNotEmpty) {
      // Tambah buku ke daftar borrowedBooks
      borrowedBookController.borrowedBooks.add({
        "title": title.value,
        "author": author.value,
      });

      print('Buku ditambahkan: ${title.value}, ${author.value}');
      Get.back();  // Kembali ke halaman sebelumnya setelah menambah buku
    } else {
      Get.snackbar('Error', 'Semua field harus diisi');
    }
  }
}
