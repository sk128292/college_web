import 'dart:convert';

import 'package:college_web/app/data/model/notification_model.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;

class NotificationController extends GetxController {
  Rx<NotificationModel?> notificationResponse = Rx<NotificationModel?>(null);

  RxBool startLoading = false.obs;

  RxList notificationData = [].obs;

  Future getNotificationData() async {
    startLoading.value = true;
    var response = await http.get(
      Uri.parse("http://www.rdbmm.ac.in/home/updates/"),
    );
    // headers: {"Access-Control-Allow-Origin": "*"});

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);

      NotificationModel data = NotificationModel.fromJson(resp);
      notificationResponse.value = data;
      notificationData.value = notificationResponse.value!.data!.toList();
      startLoading.value = false;
      print(notificationData[0].title);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getNotificationData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
