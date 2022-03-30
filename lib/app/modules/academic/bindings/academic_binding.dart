import 'package:get/get.dart';

import '../controllers/academic_controller.dart';

class AcademicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcademicController>(
      () => AcademicController(),
    );
  }
}
