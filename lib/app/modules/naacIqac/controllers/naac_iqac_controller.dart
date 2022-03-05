import 'dart:convert';
import 'package:college_web/app/data/model/about_iqac_model.dart';
import 'package:college_web/app/data/model/aqar_iqac_model.dart';
import 'package:college_web/app/data/model/aqar_naac_model.dart';
import 'package:college_web/app/data/model/calender_iqac_model.dart';
import 'package:college_web/app/data/model/composition_iqac_model.dart';
import 'package:college_web/app/data/model/cssr_naac_model.dart';
import 'package:college_web/app/data/model/csss_naac_model.dart';
import 'package:college_web/app/data/model/department_iqac_model.dart';
import 'package:college_web/app/data/model/meeting_iqac_model.dart';
import 'package:college_web/app/data/model/notification_iqac_model.dart';
import 'package:college_web/app/data/model/po_pso_iqac_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NaacIqacController extends GetxController {
  Rx<AboutIqacModel?> aboutIqacResponse = Rx<AboutIqacModel?>(null);
  Rx<CalenderIqacModel?> calenderIqacResponse = Rx<CalenderIqacModel?>(null);
  Rx<CompositionIqacModel?> compositionIqacResponse =
      Rx<CompositionIqacModel?>(null);
  Rx<AqarIqacModel?> aqarIqacResponse = Rx<AqarIqacModel?>(null);
  Rx<DepartmentIqacModel?> departmentIqacResponse =
      Rx<DepartmentIqacModel?>(null);
  Rx<MeetingIqacModel?> meetingIqacResponse = Rx<MeetingIqacModel?>(null);
  Rx<NotificationIqacModel?> notificationIqacResponse =
      Rx<NotificationIqacModel?>(null);
  Rx<PoPsoIqacModel?> poPsoIqacResponse = Rx<PoPsoIqacModel?>(null);
  Rx<CssrNaacModel?> cssrNaacResponse = Rx<CssrNaacModel?>(null);
  Rx<CsssNaacModel?> csssNaacResponse = Rx<CsssNaacModel?>(null);
  Rx<AqarNaacModel?> aqarNaacResponse = Rx<AqarNaacModel?>(null);

  RxBool naacActive = true.obs;
  RxBool iqacActive = false.obs;

  RxInt selectedIndex = 0.obs;
  RxInt selectedSession = 0.obs;

  RxList aboutIqacData = [].obs;
  RxList calenderIqacData = [].obs;
  RxList aqarIqacData = [].obs;
  RxList compositionIqacData = [].obs;
  RxList departmentIqacData = [].obs;
  RxList meetingIqacData = [].obs;
  RxList notificationIqacData = [].obs;
  RxList poPsoIqacData = [].obs;
  RxList cssrNaacData = [].obs;
  RxList csssNaacData = [].obs;
  RxList aqarNaacData = [].obs;

  List<Map<String, dynamic>> naacList = [
    {"name": "NAAC CSSR"},
    {"name": "NAAC AQAR"},
    {"name": "NAAC CSSS"},
  ];
  List<Map<String, dynamic>> iqacList = [
    {"name": "About IQAC"},
    {"name": "Calender"},
    {"name": "Notification Of IQAC"},
    {"name": "Composition of IQAC"},
    {"name": "AQAR"},
    {"name": "Minutes of IQAC Meetings"},
    {"name": "PO, PSO, CO"},
    {"name": "Feedback"},
  ];
  List<Map<String, dynamic>> sessionList = [
    {"session": "2017 - 2018"},
    {"session": "2018 - 2019"},
    {"session": "2019 - 2020"},
    {"session": "2020 - 2021"},
    {"session": "2021 - 2022"},
  ];

  void changeIndex(index) {
    selectedIndex.value = index;
  }

  void changeSession(index) {
    selectedSession.value = index;
    ;
  }

  Future getAboutIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacabout/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      AboutIqacModel data = AboutIqacModel.fromJson(resp);
      aboutIqacResponse.value = data;
      aboutIqacData.value = aboutIqacResponse.value!.data!.toList();
    }
  }

  Future getCalenderIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqaccalender/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      CalenderIqacModel data = CalenderIqacModel.fromJson(resp);
      calenderIqacResponse.value = data;
      calenderIqacData.value = calenderIqacResponse.value!.data!.toList();

      print(
        "hhh " + calenderIqacData.length.toString(),
      );
    }
  }

  Future getAqarIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacaqar/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      AqarIqacModel data = AqarIqacModel.fromJson(resp);
      aqarIqacResponse.value = data;
      aqarIqacData.value = aqarIqacResponse.value!.data!.reversed.toList();

      print(
        "hhh" + aqarIqacData.toList().toString(),
      );
    }
  }

  Future getCompositionIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqaccompostion/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      CompositionIqacModel data = CompositionIqacModel.fromJson(resp);
      compositionIqacResponse.value = data;
      compositionIqacData.value = compositionIqacResponse.value!.data!.toList();

      print(
        "hhh" + compositionIqacData.toList().toString(),
      );
    }
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
        "hhh" + departmentIqacData.toList().toString(),
      );
    }
  }

  Future getMeetingIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacminutesOfIqacMeeting/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      MeetingIqacModel data = MeetingIqacModel.fromJson(resp);
      meetingIqacResponse.value = data;
      meetingIqacData.value = meetingIqacResponse.value!.data!.toList();

      print(
        "hhh" + meetingIqacData.toList().toString(),
      );
    }
  }

  Future getNotificationIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacnotification/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      NotificationIqacModel data = NotificationIqacModel.fromJson(resp);
      notificationIqacResponse.value = data;
      notificationIqacData.value =
          notificationIqacResponse.value!.data!.toList();

      print(
        "hhh" + notificationIqacData.toList().toString(),
      );
    }
  }

  Future getPoPsoIqacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/iqacpopsoco/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      PoPsoIqacModel data = PoPsoIqacModel.fromJson(resp);
      poPsoIqacResponse.value = data;
      poPsoIqacData.value = poPsoIqacResponse.value!.data!.toList();

      print(
        "hhh" + poPsoIqacData.toList().toString(),
      );
    }
  }

  Future getCssrNaacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/naacssr/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      CssrNaacModel data = CssrNaacModel.fromJson(resp);
      cssrNaacResponse.value = data;
      cssrNaacData.value = cssrNaacResponse.value!.data!.toList();

      print(
        "hhh" + cssrNaacData.toList().toString(),
      );
    }
  }

  Future getCsssNaacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/naacsss/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      print("jhhhhhhh" + resp.toString());
      CsssNaacModel data = CsssNaacModel.fromJson(resp);
      csssNaacResponse.value = data;
      csssNaacData.value = csssNaacResponse.value!.data!.toList();

      print(
        "hhh" + csssNaacData.toList().toString(),
      );
    }
  }

  Future getAqarNaacData() async {
    var response = await http.get(
      Uri.parse("http://139.59.81.31/naaqandiqac/Naacaqar/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      AqarNaacModel data = AqarNaacModel.fromJson(resp);
      aqarNaacResponse.value = data;
      aqarNaacData.value = aqarNaacResponse.value!.data!.toList();
    }
  }

  void activateIqac() {
    iqacActive.value = true;
    naacActive.value = false;
  }

  void activateNaac() {
    naacActive.value = true;
    iqacActive.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    getAboutIqacData();
    getCalenderIqacData();
    getAqarIqacData();
    getCompositionIqacData();
    getDepartmentIqacData();
    getMeetingIqacData();
    getNotificationIqacData();
    getPoPsoIqacData();
    getCssrNaacData();
    getCsssNaacData();
    getAqarNaacData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
