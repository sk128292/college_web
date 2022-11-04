import 'dart:convert';

import 'package:college_web/app/data/model/mediaModel.dart';
import 'package:college_web/app/data/model/newsModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:photo_view/photo_view.dart';

class NewsMediaController extends GetxController {
  Rx<mediaModel?> mediaResponse = Rx<mediaModel?>(null);
  Rx<newsModel?> newsResponse = Rx<newsModel?>(null);

  RxInt selectedIndex = 0.obs;

  RxList media = [].obs;
  RxList news = [].obs;

  List newsMedia = [
    "News",
    "Media",
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

  Future getMediaData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/mediaNews/media/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      mediaModel data = mediaModel.fromJson(resp);
      mediaResponse.value = data;
      media.value = mediaResponse.value!.data!.toList();
    }
  }

  Future getNewsData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/mediaNews/news/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      newsModel data = newsModel.fromJson(resp);
      newsResponse.value = data;
      news.value = newsResponse.value!.data!.toList();
    }
  }

  @override
  void onInit() {
    super.onInit();

    getMediaData();
    getNewsData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  openModal(String img) {
    return Get.dialog(
      Container(
        margin: EdgeInsets.symmetric(horizontal: 350, vertical: 100),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Container(
            child: PhotoView(
          imageProvider: NetworkImage(img),
        )),
      ),
    );
  }
}
