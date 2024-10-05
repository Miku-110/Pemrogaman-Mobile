import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddBookController>(
      () => AddBookController(),
    );
  }
}
