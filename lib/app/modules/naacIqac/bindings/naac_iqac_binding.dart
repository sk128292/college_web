import 'package:get/get.dart';

import '../controllers/naac_iqac_controller.dart';

class NaacIqacBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NaacIqacController>(
      () => NaacIqacController(),
    );
  }
}
