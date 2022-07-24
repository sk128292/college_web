import 'dart:convert';

import 'package:college_web/app/data/model/all_program_model.dart';
import 'package:college_web/app/data/model/department_iqac_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DepartmentController extends GetxController {
  Rx<DepartmentIqacModel?> departmentIqacResponse =
      Rx<DepartmentIqacModel?>(null);

  Rx<allProgramModel?> allProgramResponse = Rx<allProgramModel?>(null);

  RxInt selectedIndex = 0.obs;

  RxList departmentIqacData = [].obs;
  RxList allProgramData = [].obs;

  List humanities = [
    "Department of Hindi",
    "Department of English",
  ];

  List science = [
    "Department of Botany",
  ];
  List commerce = [
    "Department of Accounts",
  ];
  List socialScience = [
    "Department of Political Science",
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

  Future getDepartmentIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacdepartment/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      DepartmentIqacModel data = DepartmentIqacModel.fromJson(resp);
      departmentIqacResponse.value = data;
      departmentIqacData.value = departmentIqacResponse.value!.data!.toList();

      print(
        "hhh" + departmentIqacData[0].departmentName.toString(),
      );
    }
  }

  Future getAllProgram() async {
    var response = await http.get(
      Uri.parse("http://rdbmm.ac.in/programs/facultyofSubject/"),
    );
    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      allProgramModel data = allProgramModel.fromJson(resp);
      allProgramResponse.value = data;
      allProgramData.value = allProgramResponse.value!.data!.toList();
      print(
          "ABCDEF : ${allProgramData[selectedIndex.value].facultyOfSubjectsData.length}");
    }
  }

  @override
  void onInit() {
    super.onInit();
    getDepartmentIqacData();
    getAllProgram();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
