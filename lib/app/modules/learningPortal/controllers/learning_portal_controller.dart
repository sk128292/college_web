import 'dart:convert';

import 'package:college_web/app/data/model/learnig_portal_model.dart';
import 'package:college_web/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LearningPortalController extends GetxController {
  Rx<LearningPortalModel?> learningPortalResponse =
      Rx<LearningPortalModel?>(null);

  RxList learningPortalData = [].obs;

  Future getLearningPortalData() async {
    var response = await http.get(
        Uri.parse("http://139.59.81.31/learning/learn"),
        headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      LearningPortalModel data = LearningPortalModel.fromJson(resp);
      learningPortalResponse.value = data;
      learningPortalData.value = learningPortalData.toList();

      print("hhh" + learningPortalData.toList().toString());
    }
  }

  void goToAboutUsPage() {
    Get.toNamed(Routes.ABOUT_US);
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
