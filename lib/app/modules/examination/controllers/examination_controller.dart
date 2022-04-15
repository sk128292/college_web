import 'package:get/get.dart';

class ExaminationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List examinationData = [
    "Admit Card",
    "Result",
    "Mid-Sem Exam",
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
