import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import 'controller.dart';

class BookPage extends GetView<BookController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookController>(builder: (controller) {
      return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SafeArea(
                  child: SizedBox(),
                  bottom: false,
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
          ),
        ),
      );
    });
  }
}
