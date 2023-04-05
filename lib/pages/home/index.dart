import 'package:fishword/pages/book/index.dart';
import 'package:fishword/pages/dictation/index.dart';
import 'package:fishword/pages/dictionary/index.dart';
import 'package:fishword/pages/front/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        body: Obx(() => IndexedStack(
              children: [
                FrontPage(),
                DictionaryPage(),
                DictationPage(),
                BookPage(),
              ],
              index: controller.navigationBarAction.value,
            )),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: controller.navigationBarAction.value,
              onTap: (idx) {
                controller.navigationBarAction.value = idx;
              },
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),
                  label: '背词',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.batch_prediction_outlined),
                  label: '词典',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.music_note_outlined),
                  label: '听写',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book_outlined),
                  label: 'Book',
                ),
              ],
            )),
      );
    });
  }
}
