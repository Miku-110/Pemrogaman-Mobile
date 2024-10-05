import 'package:get/get.dart';

class UpdateBookController extends GetxController {
  var title = ''.obs;
  var author = ''.obs;

  // Fungsi untuk menerima data buku yang akan diupdate
  void setBookData(Map<String, String> data) {
    title.value = data['title']!;
    author.value = data['author']!;
  }

  // Fungsi untuk mengupdate buku
  void updateBook(String id) {
    if (title.isNotEmpty && author.isNotEmpty) {
      // Update buku dalam database atau state (disesuaikan dengan implementasi)
      print('Buku dengan id $id diupdate menjadi: ${title.value}, ${author.value}');
      Get.back();  // Kembali ke halaman sebelumnya
    } else {
      Get.snackbar('Error', 'Semua field harus diisi');
    }
  }
}
