import 'package:get/get.dart';

class ReturnBookController extends GetxController {
  var borrowedBooks = <Map<String, String>>[].obs;  // List buku yang dipinjam

  @override
  void onInit() {
    super.onInit();
    fetchBorrowedBooks();
  }

  // Fungsi untuk mendapatkan data buku yang dipinjam (data dummy untuk contoh)
  void fetchBorrowedBooks() {
    borrowedBooks.value = [
      {"id": "1", "title": "Pemrograman Flutter", "author": "John Doe"},
      {"id": "2", "title": "Dart untuk Pemula", "author": "Jane Doe"}
    ];
  }

  // Fungsi untuk mengembalikan buku
  void returnBook(String id) {
    borrowedBooks.removeWhere((book) => book['id'] == id);
    Get.snackbar('Sukses', 'Buku berhasil dikembalikan');
  }
}
