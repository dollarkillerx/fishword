import 'dart:io';

import 'package:fishword/common/state_machine/dictation_state_machine.dart';
import 'package:fishword/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'controller.dart';

class DictationPage extends GetView<DictationController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DictationController>(builder: (controller) {
      return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: SizedBox(),
                bottom: false,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "当前听写数量: ${DictationStateMachine().words().length}",
                    style: FishwordFont.baseFont,
                  ),
                  InkWell(
                    onTap: () {
                      DictationStateMachine().empty();
                      controller.toRefresh();
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        "清空",
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
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "听写顺序: ",
                    style: FishwordFont.baseFont.copyWith(fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    value: controller.selectedSequenceOption,
                    items: controller.optionsSequence.map((option) {
                      return DropdownMenuItem(
                        value: option,
                        child: Text(
                          option,
                          style: FishwordFont.baseFont.copyWith(fontSize: 17),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.selectedSequenceOption = value!;
                      controller.toRefresh();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "播放次数: ",
                    style: FishwordFont.baseFont.copyWith(fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    value: controller.selectedPayNumOption,
                    items: controller.optionsPayNum.map((option) {
                      return DropdownMenuItem(
                        value: option,
                        child: Text(
                          option,
                          style: FishwordFont.baseFont.copyWith(fontSize: 17),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.selectedPayNumOption = value!;
                      controller.toRefresh();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "播放延迟sec: ",
                    style: FishwordFont.baseFont.copyWith(fontSize: 17),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownButton(
                    value: controller.selectedSleepTimeOption,
                    items: controller.optionsSleepTime.map((option) {
                      return DropdownMenuItem(
                        value: option,
                        child: Text(
                          option,
                          style: FishwordFont.baseFont.copyWith(fontSize: 17),
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      controller.selectedSleepTimeOption = value!;
                      controller.toRefresh();
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {
                  controller.payMusic();
                },
                child: Container(
                  width: Get.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "听写",
                    style: TextStyle(fontSize: 17),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "本次听写单词： ",
                style: FishwordFont.baseFont.copyWith(fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              ...DictationStateMachine().words().map((e) => Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.word,
                          style: FishwordFont.baseFont.copyWith(fontSize: 23),
                        ),
                        Text(
                          e.katakana,
                          style: FishwordFont.baseFont.copyWith(fontSize: 18),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
