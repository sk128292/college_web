import 'package:get/get.dart';

import '../controllers/admission_controller.dart';

class AdmissionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdmissionController>(
      () => AdmissionController(),
    );
  }
}
