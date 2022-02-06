import 'package:get/get.dart';

import '../controllers/science_controller.dart';

class ScienceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScienceController>(
      () => ScienceController(),
    );
  }
}
