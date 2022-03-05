import 'dart:convert';

import 'package:college_web/app/data/model/department_iqac_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DepartmentController extends GetxController {
  Rx<DepartmentIqacModel?> departmentIqacResponse =
      Rx<DepartmentIqacModel?>(null);

  RxInt selectedIndex = 0.obs;

  RxList departmentIqacData = [].obs;

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

  @override
  void onInit() {
    super.onInit();
    getDepartmentIqacData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
