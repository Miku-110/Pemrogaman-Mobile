import 'package:get/get.dart';

class LoginController extends GetxController {
  var username = ''.obs;
  var password = ''.obs;

  // Fungsi untuk autentikasi pengguna
  void login() {
    if (username.value == '202210370311110' && password.value == '123') {
      // Jika login berhasil
      Get.offNamed('/book_list');  // Navigasi ke daftar buku
    } else {
      // Jika login gagal
      Get.snackbar('Login Failed', 'Username atau password salah');
    }
  }
}
