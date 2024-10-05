import 'package:get/get.dart';

import '../controllers/borrowed_book_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BorrowedBookController>(
      () => BorrowedBookController(),
    );
  }
}
