import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class DictionaryDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DictionaryDetailsController>(() => DictionaryDetailsController());
    Get.lazyPut<DictionaryDetailsProvider>(() => DictionaryDetailsProvider());
  }
}
