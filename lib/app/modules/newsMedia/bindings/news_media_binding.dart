import 'package:get/get.dart';

import '../controllers/news_media_controller.dart';

class NewsMediaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsMediaController>(
      () => NewsMediaController(),
    );
  }
}
