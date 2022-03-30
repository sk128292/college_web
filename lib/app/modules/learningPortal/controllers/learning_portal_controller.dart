import 'dart:convert';

import 'package:college_web/app/data/model/learnig_portal_model.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LearningPortalController extends GetxController {
  Rx<LearningPortalModel?> learningPortalResponse =
      Rx<LearningPortalModel?>(null);

  RxBool startLoading = false.obs;

  // List<Map<String, dynamic>> learningData = [
  //   {
  //     "title": "Semester IV Economics Core Paper",
  //     "link":
  //         "https://drive.google.com/file/d/1etF8fcf_L6UjypiKYcaA1HO59T5MJ0SN/view?usp=sharing"
  //   },
  //   {
  //     "title": "Notes for Semester II Economics Core Paper",
  //     "link":
  //         "https://drive.google.com/file/d/12M58IJbsXoaKeyKrBKtmnDFT5KLEH1qk/view?usp=sharing"
  //   },
  //   {
  //     "title": "Notes for Semester IV Economics Core Paper",
  //     "link":
  //         "https://drive.google.com/file/d/1OvRbS0fu9106V-4OC7eOPWVWIlPK_D51/view?usp=sharing"
  //   },
  //   {
  //     "title": "Semester II Economics Core Paper",
  //     "link":
  //         "https://drive.google.com/file/d/1H1htXxua8e5hKPH0lyy-Jyh1L6BTU2Ie/view?usp=sharing"
  //   },
  //   {
  //     "title": "Semester 2 Economics Lecture",
  //     "link": "https://www.youtube.com/watch?v=i_-WCCjEv9c"
  //   },
  //   {
  //     "title": "Semester 4 Economics Lecture",
  //     "link": "https://www.youtube.com/watch?v=CjMCJroCOJ8"
  //   },
  // ];

  RxList learningPortalData = [].obs;

  Future getLearningPortalData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/learning/learn"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      LearningPortalModel data = LearningPortalModel.fromJson(resp);
      learningPortalResponse.value = data;
      learningPortalData.value = learningPortalResponse.value!.data!.toList();

      print("hhh" + learningPortalData[0].uploadBook.toString());
    }
  }

  void goToAboutUsPage() {
    Get.toNamed(Routes.ABOUT_US);
  }

  void goToHomePage() {
    Get.toNamed(Routes.HOME);
  }

  void goToLearningPortalPage() {
    Get.toNamed(Routes.LEARNING_PORTAL);
  }

  @override
  void onInit() {
    super.onInit();
    getLearningPortalData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
