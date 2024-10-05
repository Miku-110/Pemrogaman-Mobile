import 'package:get/get.dart';

class BookListController extends GetxController {
  var bookList = <Map<String, String>>[].obs;  // List buku yang diamati
  var isLoading = false.obs;  // Mengamati apakah sedang loading

  // Fungsi untuk mengambil daftar buku
  void fetchBooks() async {
    isLoading(true);  // Set loading menjadi true
    try {
      // Simulasi fetch data dari database (ganti dengan implementasi API/database)
      await Future.delayed(Duration(seconds: 2));
      bookList.value = [
        {"id": "1", "title": "Pemrograman Flutter", "author": "John Doe"},
        {"id": "2", "title": "Dart untuk Pemula", "author": "Jane Doe"},
      ];
    } finally {
      isLoading(false);  // Set loading menjadi false
    }
  }
}
