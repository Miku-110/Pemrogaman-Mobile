import 'package:get/get.dart';

import '../controllers/delete_book_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeleteBookController>(
      () => DeleteBookController(),
    );
  }
}
