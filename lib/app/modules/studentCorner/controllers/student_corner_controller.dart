import 'dart:convert';

import 'package:college_web/app/data/model/learnig_portal_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StudentCornerController extends GetxController {
  Rx<LearningPortalModel?> learningPortalResponse =
      Rx<LearningPortalModel?>(null);
  RxInt selectedIndex = 0.obs;
  RxList learningPortalData = [].obs;

  List studentCornerData = [
    "E-learning Resources",
    "Syllabus",
    "Admission",
    "Result",
    "CLC Certificate",
    "Bonafied Certificate",
    "Prospectus",
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

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

      print("hhh" + learningPortalData[0].title.toString());
    }
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
