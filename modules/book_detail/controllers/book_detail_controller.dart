import 'package:get/get.dart';

class BookDetailController extends GetxController {
  var book = {}.obs;  // Buku yang akan ditampilkan

  // Fungsi untuk menerima data buku dari argument
  void setBookData(Map<String, String> data) {
    book.value = data;
  }
}
