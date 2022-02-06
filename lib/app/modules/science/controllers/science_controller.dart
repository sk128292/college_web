import 'package:college_web/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ScienceController extends GetxController {
  final count = 0.obs;

  void goToAboutUsPage() {
    Get.toNamed(Routes.ABOUT_US);
  }

  void goToLearningPortalPage() {
    Get.toNamed(Routes.LEARNING_PORTAL);
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
  void increment() => count.value++;
}
