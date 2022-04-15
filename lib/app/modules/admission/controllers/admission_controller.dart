import 'package:get/get.dart';

class AdmissionController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List admissionData = [
    "Admission Form",
    "Eligibility Criteria",
    "Available Seats",
    "Admission Fee",
    "Reservation Criteria",
    "Syllabus",
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
