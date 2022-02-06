import 'package:get/get.dart';

import '../controllers/art_controller.dart';

class ArtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArtController>(
      () => ArtController(),
    );
  }
}
