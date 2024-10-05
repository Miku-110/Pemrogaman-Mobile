import 'package:get/get.dart';
import 'package:tugas_1/app/modules/Login/controllers/login_controller.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
