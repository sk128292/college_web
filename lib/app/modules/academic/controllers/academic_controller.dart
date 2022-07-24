import 'dart:convert';

import 'package:college_web/app/data/model/academic_calender_model.dart';
import 'package:college_web/app/data/model/academic_time_table_model.dart';
import 'package:college_web/app/data/model/cbcs_rule_regulation_model.dart';
import 'package:college_web/app/data/model/custom_academinc_model.dart';
import 'package:college_web/app/data/model/fees_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AcademicController extends GetxController {
  Rx<AcademicTimeTableModel?> academicTimeTableResponse =
      Rx<AcademicTimeTableModel?>(null);
  Rx<CustomAcademicModel?> customAcademicResponse =
      Rx<CustomAcademicModel?>(null);
  Rx<FeesModel?> feesResponse = Rx<FeesModel?>(null);

  Rx<CbcsRuleRegulationModel?> cbcsRuleRegulationResponse =
      Rx<CbcsRuleRegulationModel?>(null);
  Rx<AcademicCalenderModel?> academicCalenderResponse =
      Rx<AcademicCalenderModel?>(null);
  RxInt selectedIndex = 0.obs;

  RxList academicTimeTable = [].obs;
  // RxList grievanceRedressalCell = [].obs;
  // RxList antiRaggingCell = [].obs;
  // RxList womenandSexualHarassmentCell = [].obs;
  // RxList ecoClub = [].obs;
  // RxList feesData = [].obs;
  RxList cbcsRuleRegulationData = [].obs;
  RxList academicCalenderData = [].obs;

  // RxList academicExellanceData = [].obs;

  List academics = [
    "Programmes",
    "CBCS Course Rules & Regulation",
    "Department",
    "Office & Class Time Table",
    "Academic Calender",
    // "Grievance Redressal Cell",
    // "Anitragging Cell",
    // "Women & Sexual Harassment Cell",
    // "ECO Club",

    // "Academic Exellance",
    // "Library",
  ];

  List humanities = [
    "Department of Hindi",
  ];

  List science = [
    "Department of Botany",
    "Department of Zoology",
    "Department of Physics",
  ];
  List commerce = [
    "Department of Accounts",
  ];
  List socialScience = [
    "Department of Political Science",
    "Department of Economics",
    "Department of History",
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

  // Future getAntiRaggingCell() async {
  //   var response = await http.get(
  //     Uri.parse("http://rdbmm.ac.in/academic/antiraggingcell/"),
  //   );
  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
  //     customAcademicResponse.value = data;
  //     antiRaggingCell.value = customAcademicResponse.value!.data!.toList();
  //   }
  // }

  // Future getWomenHarassmentCell() async {
  //   var response = await http.get(
  //     Uri.parse("http://rdbmm.ac.in/academic/womenandsexualharassmentCell/"),
  //   );
  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
  //     customAcademicResponse.value = data;
  //     womenandSexualHarassmentCell.value =
  //         customAcademicResponse.value!.data!.toList();
  //   }
  // }

  // Future getEcoClub() async {
  //   var response = await http.get(
  //     Uri.parse("http://rdbmm.ac.in/academic/ecoclub/"),
  //   );
  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     CustomAcademicModel data = CustomAcademicModel.fromJson(resp);
  //     customAcademicResponse.value = data;
  //     ecoClub.value = customAcademicResponse.value!.data!.toList();
  //   }
  // }

  // Future getAcademicFees() async {
  //   var response = await http.get(
  //     Uri.parse("http://rdbmm.ac.in/academic/feestructure/"),
  //   );
  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     FeesModel data = FeesModel.fromJson(resp);
  //     feesResponse.value = data;
  //     feesData.value = feesResponse.value!.data!.toList();
  //   }
  // }

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

  // Future getAcademicExcellanceData() async {
  //   var response = await http.get(
  //     Uri.parse("http://rdbmm.ac.in/academic/academiccexcelence/"),
  //   );
  //   if (response.statusCode == 200) {
  //     var resp = jsonDecode(response.body);
  //     AcademicCalenderModel data = AcademicCalenderModel.fromJson(resp);
  //     academicCalenderResponse.value = data;
  //     academicExellanceData.value =
  //         academicCalenderResponse.value!.data!.toList();
  //   }
  // }

  @override
  void onInit() {
    super.onInit();
    getAcademicTimeTableData();
    // getAntiRaggingCell();
    // getWomenHarassmentCell();
    // getEcoClub();
    // getAcademicFees();
    getAcademicCalenderData();
    // getAcademicExcellanceData();
    getCbcsRuleRegulationData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
