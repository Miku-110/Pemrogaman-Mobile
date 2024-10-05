import 'package:get/get.dart';

import '../controllers/book_detail_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookDetailController>(
      () => BookDetailController(),
    );
  }
}
