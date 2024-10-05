import 'package:get/get.dart';

class DeleteBookController extends GetxController {
  void deleteBook(String id) {
    // Implementasi penghapusan buku dari database atau state
    print('Buku dengan id $id dihapus');
    Get.back();  // Kembali ke halaman sebelumnya
  }
}
