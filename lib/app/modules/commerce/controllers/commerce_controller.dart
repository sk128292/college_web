import 'package:college_web/app/routes/app_pages.dart';
import 'package:get/get.dart';

class CommerceController extends GetxController {
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
}
