import 'package:fishword/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class FrontPage extends GetView<FrontController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FrontController>(builder: (controller) {
      return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Text(
                  "Hi, Fishword \n一起来摸鱼🦑背单词",
                  style: FishwordFont.baseFont.copyWith(fontSize: 23),
                ),
                bottom: false,
              ),
              Container(
                width: Get.width,
                height: 180,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "新标注日本语初级下册",
                      style: FishwordFont.baseFont
                          .copyWith(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "24/90 关",
                      style: FishwordFont.baseFont
                          .copyWith(color: Colors.white, fontSize: 10),
                    ),
                    LinearProgressIndicator(
                      backgroundColor: Colors.redAccent,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                      value: .5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "开始闯关",
                            style: FishwordFont.baseFont
                                .copyWith(color: Colors.orange, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            "复习",
                            style: FishwordFont.baseFont
                                .copyWith(color: Colors.white, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(20)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                        )
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "背书",
                      style: FishwordFont.baseFont,
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/nihon.png",
                              fit: BoxFit.cover,
                            ),
                            height: 180,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Get.width - 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "<瞬 全宇宙> 必备单词",
                                  style: FishwordFont.baseFont.copyWith(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  "精选4级考试单词",
                                  maxLines: 2,
                                  style: FishwordFont.baseFont.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "去闯关",
                                    style: FishwordFont.baseFont.copyWith(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/nihon.png",
                              fit: BoxFit.cover,
                            ),
                            height: 180,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Get.width - 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "<瞬 全宇宙> 必备单词",
                                  style: FishwordFont.baseFont.copyWith(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  "精选4级考试单词",
                                  maxLines: 2,
                                  style: FishwordFont.baseFont.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "去闯关",
                                    style: FishwordFont.baseFont.copyWith(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/nihon.png",
                              fit: BoxFit.cover,
                            ),
                            height: 180,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Get.width - 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "<瞬 全宇宙> 必备单词",
                                  style: FishwordFont.baseFont.copyWith(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  "精选4级考试单词",
                                  maxLines: 2,
                                  style: FishwordFont.baseFont.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "去闯关",
                                    style: FishwordFont.baseFont.copyWith(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/images/nihon.png",
                              fit: BoxFit.cover,
                            ),
                            height: 180,
                            width: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Get.width - 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "<瞬 全宇宙> 必备单词",
                                  style: FishwordFont.baseFont.copyWith(
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  "精选4级考试单词",
                                  maxLines: 2,
                                  style: FishwordFont.baseFont.copyWith(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text(
                                    "去闯关",
                                    style: FishwordFont.baseFont.copyWith(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 2),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(20)),
                                )
                              ],
                            ),
                          )
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
}
