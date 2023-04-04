import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class ExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExampleController>(() => ExampleController());
    Get.lazyPut<ExampleProvider>(() => ExampleProvider());
  }
}
