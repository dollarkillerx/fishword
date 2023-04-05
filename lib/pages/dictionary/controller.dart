import 'package:fishword/common/state_machine/dictation_state_machine.dart';
import 'package:fishword/pages/dictionary/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/g_response.dart';

class DictionaryController extends GetxController {
  DictionaryProvider provider = Get.find();
  List<Dict>? dicts;

  search(value) async {
    GResponse gResponse = await provider.dict(value);
    if (gResponse.GetError() != null) {
      Get.dialog(AlertDialog(
        title: Text("Error"),
        content: Text(gResponse.GetError()!.message),
      ));
      return;
    }

    if (gResponse.GetData() != null) {
      Dicts ds = Dicts.fromJson(gResponse.GetData()!);
      dicts = ds.dicts;
      update();
    }
    return;
  }

  toRefresh() {
    update();
  }
}
