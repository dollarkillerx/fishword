import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'common/routers/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 全局设置透明appBar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return GetMaterialApp(
      title: "Fishword 摸鱼背单词",
      // 默认路由
      initialRoute: AppPages.InitRoute,
      // 页面表
      getPages: AppPages.routers,
      // 404路由
      unknownRoute: AppPages.unknownRoute,
      // 基础配置
      debugShowCheckedModeBanner: false, // 不显示debug
    );
  }
}
