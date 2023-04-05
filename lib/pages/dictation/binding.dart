import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class DictationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DictationController>(() => DictationController());
    Get.lazyPut<DictationProvider>(() => DictationProvider());
  }
}
