import 'package:get/get.dart';

import 'package:college_web/app/modules/aboutUs/bindings/about_us_binding.dart';
import 'package:college_web/app/modules/aboutUs/views/about_us_view.dart';
import 'package:college_web/app/modules/academic/bindings/academic_binding.dart';
import 'package:college_web/app/modules/academic/views/academic_view.dart';
import 'package:college_web/app/modules/admission/bindings/admission_binding.dart';
import 'package:college_web/app/modules/admission/views/admission_view.dart';
import 'package:college_web/app/modules/art/bindings/art_binding.dart';
import 'package:college_web/app/modules/art/views/art_view.dart';
import 'package:college_web/app/modules/collegeAdministrative/bindings/college_administrative_binding.dart';
import 'package:college_web/app/modules/collegeAdministrative/views/college_administrative_view.dart';
import 'package:college_web/app/modules/commerce/bindings/commerce_binding.dart';
import 'package:college_web/app/modules/commerce/views/commerce_view.dart';
import 'package:college_web/app/modules/department/bindings/department_binding.dart';
import 'package:college_web/app/modules/department/views/department_view.dart';
import 'package:college_web/app/modules/examination/bindings/examination_binding.dart';
import 'package:college_web/app/modules/examination/views/examination_view.dart';
import 'package:college_web/app/modules/facilities/bindings/facilities_binding.dart';
import 'package:college_web/app/modules/facilities/views/facilities_view.dart';
import 'package:college_web/app/modules/home/bindings/home_binding.dart';
import 'package:college_web/app/modules/home/views/home_view.dart';
import 'package:college_web/app/modules/learningPortal/bindings/learning_portal_binding.dart';
import 'package:college_web/app/modules/learningPortal/views/learning_portal_view.dart';
import 'package:college_web/app/modules/naacIqac/bindings/naac_iqac_binding.dart';
import 'package:college_web/app/modules/naacIqac/views/naac_iqac_view.dart';
import 'package:college_web/app/modules/notification/bindings/notification_binding.dart';
import 'package:college_web/app/modules/notification/views/notification_view.dart';
import 'package:college_web/app/modules/science/bindings/science_binding.dart';
import 'package:college_web/app/modules/science/views/science_view.dart';
import 'package:college_web/app/modules/studentCorner/bindings/student_corner_binding.dart';
import 'package:college_web/app/modules/studentCorner/views/student_corner_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.SCIENCE,
      page: () => ScienceView(),
      binding: ScienceBinding(),
    ),
    GetPage(
      name: _Paths.ART,
      page: () => ArtView(),
      binding: ArtBinding(),
    ),
    GetPage(
      name: _Paths.COMMERCE,
      page: () => CommerceView(),
      binding: CommerceBinding(),
    ),
    GetPage(
      name: _Paths.LEARNING_PORTAL,
      page: () => LearningPortalView(),
      binding: LearningPortalBinding(),
    ),
    GetPage(
      name: _Paths.NAAC_IQAC,
      page: () => NaacIqacView(),
      binding: NaacIqacBinding(),
    ),
    GetPage(
      name: _Paths.DEPARTMENT,
      page: () => DepartmentView(),
      binding: DepartmentBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_CORNER,
      page: () => StudentCornerView(),
      binding: StudentCornerBinding(),
    ),
    GetPage(
      name: _Paths.ACADEMIC,
      page: () => AcademicView(),
      binding: AcademicBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.COLLEGE_ADMINISTRATIVE,
      page: () => CollegeAdministrativeView(),
      binding: CollegeAdministrativeBinding(),
    ),
    GetPage(
      name: _Paths.FACILITIES,
      page: () => FacilitiesView(),
      binding: FacilitiesBinding(),
    ),
    GetPage(
      name: _Paths.ADMISSION,
      page: () => AdmissionView(),
      binding: AdmissionBinding(),
    ),
    GetPage(
      name: _Paths.EXAMINATION,
      page: () => ExaminationView(),
      binding: ExaminationBinding(),
    ),
  ];
}
