import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_1/app/modules/book_detail/views/book_detail_view.dart';
import 'package:tugas_1/app/modules/add_book/views/add_book_view.dart';
import 'package:tugas_1/app/modules/update_book/views/update_book_view.dart';
import 'package:tugas_1/app/modules/borrowed_book/views/borrowed_book_view.dart';
import 'package:tugas_1/app/modules/return_book/views/return_book_view.dart';
import 'package:tugas_1/app/modules/login/views/login_view.dart';
import 'package:tugas_1/app/modules/delete_book/views/delete_book_view.dart';
import 'package:tugas_1/app/modules/book_list/views/BookListView.dart';
import 'package:tugas_1/app/modules/borrowed_book/controllers/borrowed_book_controller.dart';

void main() {
  // Pastikan controller diinisialisasi
  Get.put(BorrowedBookController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Library App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/book_list', page: () => BookListView()),
        GetPage(name: '/book_detail', page: () => BookDetailView()),
        GetPage(name: '/add_book', page: () => AddBookView()),
        GetPage(name: '/update_book', page: () => UpdateBookView()),  // Rute untuk update buku
        GetPage(name: '/delete_book', page: () => DeleteBookView()),
        GetPage(name: '/borrowed_book', page: () => BorrowedBookView()),
        GetPage(name: '/return_book', page: () => ReturnBookView()),
        GetPage(name: '/', page: () => LoginView()),  // Halaman login
      ],
    );
  }
}
