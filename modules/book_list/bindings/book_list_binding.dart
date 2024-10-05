import 'package:get/get.dart';

import '../controllers/book_list_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookListController>(
      () => BookListController(),
    );
  }
}
