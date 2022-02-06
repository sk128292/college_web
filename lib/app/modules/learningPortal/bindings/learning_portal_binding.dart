import 'package:get/get.dart';

import '../controllers/learning_portal_controller.dart';

class LearningPortalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LearningPortalController>(
      () => LearningPortalController(),
    );
  }
}
