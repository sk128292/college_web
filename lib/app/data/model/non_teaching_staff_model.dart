class NonTeachingStaffModel {
  String? status;
  List<Data>? data;

  NonTeachingStaffModel({this.status, this.data});

  NonTeachingStaffModel.fromJson(Map<String, dynamic> json) {
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
  int? sNo;
  String? name;
  String? mobileNumber;
  String? concernWork;

  Data({this.id, this.sNo, this.name, this.mobileNumber, this.concernWork});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sNo = json['sNo'];
    name = json['name'];
    mobileNumber = json['mobileNumber'];
    concernWork = json['concernWork'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sNo'] = this.sNo;
    data['name'] = this.name;
    data['mobileNumber'] = this.mobileNumber;
    data['concernWork'] = this.concernWork;
    return data;
  }
}
