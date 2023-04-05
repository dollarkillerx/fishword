import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<LoginProvider>(() => LoginProvider());
  }
}
