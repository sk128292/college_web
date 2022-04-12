import 'dart:convert';

import 'package:college_web/app/data/model/academic_calender_model.dart';
import 'package:college_web/app/data/model/academic_time_table_model.dart';
import 'package:college_web/app/data/model/cbcs_rule_regulation_model.dart';
import 'package:college_web/app/data/model/custom_academinc_model.dart';
import 'package:college_web/app/data/model/fees_model.dart';
import 'package:college_web/app/data/model/non_teaching_staff_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AcademicController extends GetxController {
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
  RxInt selectedIndex = 0.obs;

  RxList academicTimeTable = [].obs;
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
  RxList grievanceRedressalCell = [].obs;
  RxList antiRaggingCell = [].obs;
  RxList womenandSexualHarassmentCell = [].obs;
  RxList ecoClub = [].obs;
  RxList feesData = [].obs;
  RxList nonTeachingStaffData = [].obs;
  RxList cbcsRuleRegulationData = [].obs;
  RxList academicCalenderData = [].obs;
  RxList academicExellanceData = [].obs;

  List academics = [
    "College Officers",
    "Teaching Staff",
    "Purchasing Committee",
    "Development Committee",
    "UGC Committee",
    "Admission Committee",
    "Publication Committee",
    "Library Advisory  Committee",
    "Sports Committee",
    "N.S.S",
    "N.C.C",
    "Grievance Redressal Cell",
    "Anitragging Cell",
    "Women & Sexual Harassment Cell",
    "ECO Club",
    "Non-Teaching Staff",
    "Office & Class Time Table",
    "Academic Calender",
    "Academic Exellance",
    "Library",
    "CBCS Course Rules & Regulation",
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

  Future getAcademicTimeTableData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/timetable/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      AcademicTimeTableModel data = AcademicTimeTableModel.fromJson(resp);
      academicTimeTableResponse.value = data;
      academicTimeTable.value = academicTimeTableResponse.value!.data!.toList();
    }
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
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      teachingStaff.value = customAcademicResponse.value!.data!.toList();
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

  Future getGrievanceRedressalCell() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/grievanceredressalcell/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      grievanceRedressalCell.value =
          customAcademicResponse.value!.data!.toList();
    }
  }

  Future getAntiRaggingCell() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/antiraggingcell/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      antiRaggingCell.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getWomenHarassmentCell() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/womenandsexualharassmentCell/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      womenandSexualHarassmentCell.value =
          customAcademicResponse.value!.data!.toList();
    }
  }

  Future getEcoClub() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/ecoclub/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
      customAcademicResponse.value = data;
      ecoClub.value = customAcademicResponse.value!.data!.toList();
    }
  }

  Future getAcademicFees() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/feestructure/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      FeesModel data = FeesModel.fromJson(resp);
      feesResponse.value = data;
      feesData.value = feesResponse.value!.data!.toList();
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

  Future getCbcsRuleRegulationData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/cbcscourcesRulesandregulations/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CbcsRuleRegulationModel data = CbcsRuleRegulationModel.fromJson(resp);
      cbcsRuleRegulationResponse.value = data;
      cbcsRuleRegulationData.value =
          cbcsRuleRegulationResponse.value!.data!.toList();
    }
  }

  Future getAcademicCalenderData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/academiccalendar/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      AcademicCalenderModel data = AcademicCalenderModel.fromJson(resp);
      academicCalenderResponse.value = data;
      academicCalenderData.value =
          academicCalenderResponse.value!.data!.toList();
    }
  }

  Future getAcademicExcellanceData() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/academic/academiccexcelence/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      AcademicCalenderModel data = AcademicCalenderModel.fromJson(resp);
      academicCalenderResponse.value = data;
      academicExellanceData.value =
          academicCalenderResponse.value!.data!.toList();
    }
  }

  @override
  void onInit() {
    super.onInit();
    getAcademicTimeTableData();
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
    getGrievanceRedressalCell();
    getAntiRaggingCell();
    getWomenHarassmentCell();
    getEcoClub();
    getAcademicFees();
    getNonTeachingStaffData();
    getAcademicCalenderData();
    getAcademicExcellanceData();
    getCbcsRuleRegulationData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
