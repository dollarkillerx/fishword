import 'package:fishword/constants/colors.dart';
import 'package:fishword/widgets/debounce_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class DictionaryPage extends GetView<DictionaryController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DictionaryController>(builder: (controller) {
      return Scaffold(
        body: Container(
          child: Column(
            children: [
              SafeArea(
                child: SizedBox(),
                bottom: false,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: DebounceTextField(
                  hintText: "输入查询",
                  debounceDelay: Duration(milliseconds: 300),
                  onChanged: (String value) {
                    value = value.trim();
                    if (value != "") {
                      controller.search(value);
                    }
                  },
                ),
              ),
              // Text(
              //   "浏览历史: ",
              //   style: FishwordFont.baseFont,
              // ),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      ...?controller.dicts?.map((e) => Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.abc,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '${e.word}  ${e.katakana}',
                                  style: FishwordFont.baseFont,
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      );
    });
  }
}
