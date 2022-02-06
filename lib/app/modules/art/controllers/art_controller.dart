import 'package:college_web/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ArtController extends GetxController {
  void goToAboutUsPage() {
    Get.toNamed(Routes.ABOUT_US);
  }

  void goToLearningPortalPage() {
    Get.toNamed(Routes.LEARNING_PORTAL);
  }

  List stream = [
    "Hindi",
    "Bengali",
    "English",
    "History",
    "Sanskrit",
    "Economics",
    "Sociology",
    "Psychology",
    "Philosophy",
    "Home Science",
    "Political Science",
  ];

  final count = 0.obs;
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
