import 'package:get/get.dart';

import '../controllers/return_book_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReturnBookController>(
      () => ReturnBookController(),
    );
  }
}
