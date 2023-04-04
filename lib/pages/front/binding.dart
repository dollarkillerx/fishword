import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class FrontBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FrontController>(() => FrontController());
    Get.lazyPut<FrontProvider>(() => FrontProvider());
  }
}
