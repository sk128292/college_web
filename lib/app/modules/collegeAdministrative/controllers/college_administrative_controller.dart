import 'dart:convert';

import 'package:college_web/app/data/model/academic_calender_model.dart';
import 'package:college_web/app/data/model/academic_time_table_model.dart';
import 'package:college_web/app/data/model/cbcs_rule_regulation_model.dart';
import 'package:college_web/app/data/model/custom_academinc_model.dart';
import 'package:college_web/app/data/model/fees_model.dart';
import 'package:college_web/app/data/model/non_teaching_staff_model.dart';
import 'package:college_web/app/data/model/teaching_staff_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CollegeAdministrativeController extends GetxController {
  Rx<AcademicTimeTableModel?> academicTimeTableResponse =
      Rx<AcademicTimeTableModel?>(null);
  Rx<CustomAcademicModel?> customAcademicResponse =
      Rx<CustomAcademicModel?>(null);
  Rx<FeesModel?> feesResponse = Rx<FeesModel?>(null);
  Rx<NonTeachingStaffModel?> nonTeachingStaffResponse =
      Rx<NonTeachingStaffModel?>(null);
  Rx<CbcsRuleRegulationModel?> cbcsRuleRegulationResponse =
      Rx<CbcsRuleRegulationModel?>(null);
  Rx<AcademicCalenderModel?> academicCalenderResponse =
      Rx<AcademicCalenderModel?>(null);
  Rx<teachingStaffModel?> teachingStaffResponse = Rx<teachingStaffModel?>(null);
  RxInt selectedIndex = 0.obs;

  RxList collegeOfficers = [].obs;
  RxList teachingStaff = [].obs;
  RxList purchasingCommitte = [].obs;
  RxList sportsCommitte = [].obs;
  RxList developmentCommitte = [].obs;
  RxList admissionCommitte = [].obs;
  RxList publicationCommitte = [].obs;
  RxList libraryCommitte = [].obs;
  RxList ugcCommitte = [].obs;
  RxList ncc = [].obs;
  RxList nss = [].obs;
  RxList nonTeachingStaffData = [].obs;

  List academics = [
    "College Officers",
    "Teaching Staff",
    "Development Committee",
    "Purchasing Committee",
    "UGC Committee",
    "Admission Committee",
    "Publication Committee",
    "Library Advisory  Committee",
    "Sports Committee",
    "N.S.S",
    "N.C.C",
    "Non-Teaching Staff",
  ];

  List humanities = [
    "Department of Hindi",
    "Department of English",
    "Department of Bengali",
    "Department of Philosphy",
    "Department of Sanskrit"
  ];

  List science = [
    "Department of Botany",
    "Department of Zoology",
    "Department of Physics",
    "Department of Chemistry",
    "Department of Mathemetics"
  ];
  List commerce = [
    "Department of Accounts",
  ];
  List socialScience = [
    "Department of Political Science",
    "Department of Economics",
    "Department of History",
    "Department of Phycchology",
    "Department of Sociology"
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

  Future getcollegeOfficers() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/collegeofficers/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      collegeOfficers.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getTeachngStaff() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/teachingstaff/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      teachingStaffModel data = teachingStaffModel.fromJson(resp);
      teachingStaffResponse.value = data;
      teachingStaff.value = teachingStaffResponse.value!.data!.toList();
    }
  }

  Future getPurchasingCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/purchasingcommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      purchasingCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getSportsCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/sportscommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      sportsCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getDevelopmentCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/developmentcommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      developmentCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getAdmissionCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/admissioncommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      admissionCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getPublicationCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/publicationcommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      publicationCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getLibraryCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/libraryadvisorycommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      libraryCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getUgcCommitte() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/ugccommittee/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      ugcCommitte.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getNcc() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/ncc/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      ncc.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getNss() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/nss/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      nss.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getNonTeachingStaffData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/nonteachingstaff/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      NonTeachingStaffModel data = NonTeachingStaffModel.fromJson(resp);
      nonTeachingStaffResponse.value = data;
      nonTeachingStaffData.value =
          nonTeachingStaffResponse.value!.data!.toList();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getcollegeOfficers();
    getTeachngStaff();
    getPurchasingCommitte();
    getSportsCommitte();
    getDevelopmentCommitte();
    getAdmissionCommitte();
    getPublicationCommitte();
    getLibraryCommitte();
    getUgcCommitte();
    getNcc();
    getNss();
    getNonTeachingStaffData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
