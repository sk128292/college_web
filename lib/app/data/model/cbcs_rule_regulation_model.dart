class CbcsRuleRegulationModel {
  String? status;
  List<Data>? data;

  CbcsRuleRegulationModel({this.status, this.data});

  CbcsRuleRegulationModel.fromJson(Map<String, dynamic> json) {
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
  String? calendarFile;

  Data({this.id, this.title, this.calendarFile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    calendarFile = json['calendarFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['calendarFile'] = this.calendarFile;
    return data;
  }
}
