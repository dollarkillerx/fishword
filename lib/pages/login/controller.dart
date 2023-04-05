import 'package:fishword/common/library/local_storage.dart';
import 'package:fishword/common/routers/app_routes.dart';
import 'package:fishword/pages/login/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/g_response.dart';

class LoginController extends GetxController {
  // 检查账户是否输入有效
  bool isUserNameValid = false;
  bool isLogin = true;

  // from
  String email = '';
  String password = '';

  LoginProvider provider = Get.find();

  changeLoginStatus() {
    isLogin = !isLogin;
    update();
  }

  @override
  void onReady() {
    super.onReady();

    if (LocalStorage.getJWT() != null) {
      Get.toNamed(AppRoutes.Home);
    }
  }

  subFrom() async {
    if (isLogin) {
      GResponse gResponse = await provider.login(email, password);
      if (gResponse.GetError() != null) {
        Get.dialog(AlertDialog(
          title: Text("Error"),
          content: Text(gResponse.GetError()!.message),
        ));
        return;
      }

      if (gResponse.GetData() != null) {
        UserJWT jwt = UserJWT.fromJson(gResponse.GetData()!);
        print(jwt.accessToken);
        LocalStorage.setJWT(jwt.accessToken);
        Get.toNamed(AppRoutes.Home);
      }
      return;
    }

    GResponse gResponse = await provider.registry(email, password);
    if (gResponse.GetError() != null) {
      Get.dialog(AlertDialog(
        title: Text("Error"),
        content: Text(gResponse.GetError()!.message),
      ));
      return;
    }

    Get.dialog(AlertDialog(
      title: Text("Success"),
      content: Text("成功注册🏅️"),
    ));

    isLogin = true;
    update();
    return;
  }
}
