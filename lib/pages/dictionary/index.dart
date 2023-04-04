import 'package:fishword/constants/colors.dart';
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
                child: TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                    hintText: '输入查询',
                    // border: outlineInputBorder,
                    enabledBorder: outlineInputBorder,
                    focusedBorder: outlineInputBorder,
                  ),
                ),
              ),
              Text(
                "浏览历史",
                style: FishwordFont.baseFont,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.abc),
                          SizedBox(
                            width: 10,
                          ),
                          Text("重い")
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    });
  }

  final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(25));
}
