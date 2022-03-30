class NotificationModel {
  String? status;
  List<Data>? data;

  NotificationModel({this.status, this.data});

  NotificationModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? discription;
  String? date;
  String? refrenceDocument;

  Data(
      {this.id,
      this.title,
      this.discription,
      this.date,
      this.refrenceDocument});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    discription = json['discription'];
    date = json['date'];
    refrenceDocument = json['refrenceDocument'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['discription'] = this.discription;
    data['date'] = this.date;
    data['refrenceDocument'] = this.refrenceDocument;
    return data;
  }
}
