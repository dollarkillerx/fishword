import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class BookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookController>(() => BookController());
    Get.lazyPut<BookProvider>(() => BookProvider());
  }
}
