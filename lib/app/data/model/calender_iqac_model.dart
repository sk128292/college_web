class CalenderIqacModel {
  String? status;
  List<Data>? data;

  CalenderIqacModel({this.status, this.data});

  CalenderIqacModel.fromJson(Map<String, dynamic> json) {
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
  String? calenderTitle;
  String? calenderFile;

  Data({this.id, this.calenderTitle, this.calenderFile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    calenderTitle = json['calenderTitle'];
    calenderFile = json['calenderFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['calenderTitle'] = this.calenderTitle;
    data['calenderFile'] = this.calenderFile;
    return data;
  }
}
