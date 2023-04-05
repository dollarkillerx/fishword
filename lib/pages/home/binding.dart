import 'package:fishword/pages/book/controller.dart';
import 'package:fishword/pages/book/provider.dart';
import 'package:fishword/pages/dictation/controller.dart';
import 'package:fishword/pages/dictation/provider.dart';
import 'package:fishword/pages/dictionary/controller.dart';
import 'package:fishword/pages/dictionary/provider.dart';
import 'package:fishword/pages/front/controller.dart';
import 'package:fishword/pages/front/provider.dart';
import 'package:get/get.dart';
import 'provider.dart';
import 'controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<HomeProvider>(() => HomeProvider());

    Get.lazyPut<FrontController>(() => FrontController());
    Get.lazyPut<FrontProvider>(() => FrontProvider());

    Get.lazyPut<DictionaryController>(() => DictionaryController());
    Get.lazyPut<DictionaryProvider>(() => DictionaryProvider());

    Get.lazyPut<BookController>(() => BookController());
    Get.lazyPut<BookProvider>(() => BookProvider());

    Get.lazyPut<DictationController>(() => DictationController());
    Get.lazyPut<DictationProvider>(() => DictationProvider());
  }
}
