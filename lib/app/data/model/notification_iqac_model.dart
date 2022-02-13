class NotificationIqacModel {
  String? status;
  List<Data>? data;

  NotificationIqacModel({this.status, this.data});

  NotificationIqacModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? notificationTitle;
  String? notificationFile;

  Data({this.id, this.notificationTitle, this.notificationFile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    notificationTitle = json['notificationTitle'];
    notificationFile = json['notificationFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['notificationTitle'] = this.notificationTitle;
    data['notificationFile'] = this.notificationFile;
    return data;
  }
}
