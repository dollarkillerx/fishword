import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class DictionaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DictionaryController>(() => DictionaryController());
    Get.lazyPut<DictionaryProvider>(() => DictionaryProvider());
  }
}
