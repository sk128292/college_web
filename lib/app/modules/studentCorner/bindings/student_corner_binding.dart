import 'package:get/get.dart';

import '../controllers/student_corner_controller.dart';

class StudentCornerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StudentCornerController>(
      () => StudentCornerController(),
    );
  }
}
