import 'dart:convert';

import 'package:college_web/app/data/model/image_slider_model.dart';
import 'package:college_web/app/data/model/notification_model.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Rx<ImageSliderModel?> imageSlideResponse = Rx<ImageSliderModel?>(null);
  Rx<NotificationModel?> notificationResponse = Rx<NotificationModel?>(null);

  ScrollController scrollController = ScrollController();
  scrollToBottom() {
    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 50), curve: Curves.linear);
  }

  RxBool startLoading = false.obs;

  RxList imageForSlide = [].obs;
  RxInt selectedIndex = 0.obs;
  RxInt currentPosition = 0.obs;
  List<String> imgList = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/4.jpg",
    "assets/5.jpg",
  ];

  List<Map<String, String>> importantLinks = [
    {
      "name": "Human Resource And Development",
      "image": "assets/hrdLogo.jpg",
      "link":
          "https://dhr.gov.in/schemes/human-resource-development-health-research-hrd"
    },
    {
      "name": "National Assessment and Accreditation Council (NAAC)",
      "image": "assets/naacLogo.png",
      "link": "http://naac.gov.in/index.php/en/"
    },
    {
      "name": "Staff Selection Commission",
      "image": "assets/sscLogo.png",
      "link": ""
    },
    {
      "name": "University Grants Commission ",
      "image": "assets/ugc_logo.png",
      "link": "https://www.ugc.ac.in/"
    },
    {
      "name": "University Grants Commission (UGC)-NET",
      "image": "assets/ugcNetlogo.jpg",
      "link": "https://ugcnet.nta.nic.in/WebInfo/Page/Page?PageId=1&LangId=P"
    },
    {
      "name": "The Union Public Service Commission",
      "image": "assets/upscLogo.jpg",
      "link": "https://www.upsc.gov.in/"
    },
  ];

  RxList notificationData = [].obs;

  void goToAboutUsPage() {
    Get.toNamed(Routes.ABOUT_US);
  }

  void goToLearningPortalPage() {
    Get.toNamed(Routes.LEARNING_PORTAL);
  }

  void goToNotificationPage() {
    Get.toNamed(Routes.NOTIFICATION);
  }

  // Future getImageForSlide() async {
  //   startLoading.value = true;
  //   var response = await http.get(
  //     Uri.parse("http://www.rdbmm.ac.in/home/slides/"),
  //   );
  //   // headers: {"Access-Control-Allow-Origin": "*"});

  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     print("jhhhhhhh" + resp.toString());
  //     ImageSliderModel data = ImageSliderModel.fromJson(resp);
  //     imageSlideResponse.value = data;
  //     imageForSlide.value = imageSlideResponse.value!.data!.toList();
  //     for (int i = 0; i < imageForSlide.length; i++) {
  //       imgList.add(imageForSlide[i].uploadImageSS.toString());
  //     }
  //     startLoading.value = false;
  //   }
  //   print(imgList);
  // }

  Future getNotificationData() async {
    startLoading.value = true;
    var response = await http.get(
      Uri.parse("http://www.rdbmm.ac.in/home/updates/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);

      NotificationModel data = NotificationModel.fromJson(resp);
      notificationResponse.value = data;
      notificationData.value = notificationResponse.value!.data!.toList();
      startLoading.value = false;
      print(notificationData[0].title);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getNotificationData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
