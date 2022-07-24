import 'package:get/get.dart';

import '../controllers/admission_form_controller.dart';

class AdmissionFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdmissionFormController>(
      () => AdmissionFormController(),
    );
  }
}
