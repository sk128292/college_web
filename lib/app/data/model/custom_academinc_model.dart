class CustomAcademicModel {
  String? status;
  List<Data>? data;

  CustomAcademicModel({this.status, this.data});

  CustomAcademicModel.fromJson(Map<String, dynamic> json) {
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
  String? designation;
  String? name;
  String? mobileNumber;

  Data({this.id, this.sNo, this.designation, this.name, this.mobileNumber});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sNo = json['sNo'];
    designation = json['designation'];
    name = json['name'];
    mobileNumber = json['mobileNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sNo'] = this.sNo;
    data['designation'] = this.designation;
    data['name'] = this.name;
    data['mobileNumber'] = this.mobileNumber;
    return data;
  }
}
