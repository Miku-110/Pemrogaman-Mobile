import 'package:get/get.dart';

class BorrowedBookController extends GetxController {
  var borrowedBooks = <Map<String, String>>[].obs;

  void fetchBorrowedBooks() {
    borrowedBooks.value = [
      {"id": "1", "title": "Pemrograman Flutter", "author": "John Doe"},
      {"id": "2", "title": "Dart untuk Pemula", "author": "Jane Doe"}
    ];
  }

  // Fungsi untuk menambah buku baru ke daftar buku yang dipinjam
  void addBorrowedBook(String title, String author) {
    borrowedBooks.add({
      "title": title,
      "author": author,
    });
  }
}
