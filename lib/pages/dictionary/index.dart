import 'package:fishword/common/routers/app_routes.dart';
import 'package:fishword/common/state_machine/dictation_state_machine.dart';
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
                      ...?controller.dicts?.map((e) => InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.DictionaryDetails,
                                  arguments: {
                                    "dict": e,
                                  });
                            },
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
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
                                  InkWell(
                                    onTap: () {
                                      if (!DictationStateMachine().checkIn(e)) {
                                        DictationStateMachine().add(e);
                                      } else {
                                        DictationStateMachine().del(e);
                                      }
                                      controller.toRefresh();
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      child: Text(
                                        DictationStateMachine().checkIn(e)
                                            ? "移除听写"
                                            : "添加听写",
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                  )
                                ],
                              ),
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
