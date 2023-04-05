import 'package:fishword/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'controller.dart';

class DictionaryDetailsPage extends GetView<DictionaryDetailsController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DictionaryDetailsController>(builder: (controller) {
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
                    controller.dict.word,
                    style: FishwordFont.baseFont
                        .copyWith(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        "添加到生词本",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    controller.dict.katakana,
                    style: FishwordFont.baseFont.copyWith(fontSize: 25),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.library_music_outlined,
                      color: Colors.blue,
                    ),
                    onTap: () async {
                      final player = AudioPlayer(); // Create a player
                      print(controller.dict.audioUrl);
                      // player.setAsset(assetPath)
                      player.setUrl(// Load a URL
                          controller.dict
                              .audioUrl); // Schemes: (https: | file: | asset: )
                      player.play();
                    },
                  ),
                ],
              ),
              ...controller.dict.simple.map((e) => Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Attribute: ${e.attribute}",
                          style: FishwordFont.baseFont.copyWith(fontSize: 18),
                        ),
                        Text(
                          "Explains: ",
                          style: FishwordFont.baseFont.copyWith(fontSize: 15),
                        ),
                        ...e.explains.map((e) => Container(
                              child: Text(e),
                            ))
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Example Sentences: ",
                style: FishwordFont.baseFont.copyWith(fontSize: 20),
              ),
              ...controller.dict.exampleSentences.map((e) => Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.all(8),
                    width: Get.width,
                    child: Text(
                      e,
                      style: FishwordFont.baseFont.copyWith(fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
