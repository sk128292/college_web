import 'package:get/get.dart';

import '../controllers/college_administrative_controller.dart';

class CollegeAdministrativeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CollegeAdministrativeController>(
      () => CollegeAdministrativeController(),
    );
  }
}
