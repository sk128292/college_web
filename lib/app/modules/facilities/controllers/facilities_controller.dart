import 'package:get/get.dart';

class FacilitiesController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List facilitiesData = [
    "Library",
    "N.S.S",
    "N.C.C.",
    "Sports",
    "Medical Facilities",
    "Student Help Desk",
    "College Canteen",
    "Language Lab",
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
