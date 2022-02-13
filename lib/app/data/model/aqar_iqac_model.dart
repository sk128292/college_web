class AqarIqacModel {
  String? status;
  List<Data>? data;

  AqarIqacModel({this.status, this.data});

  AqarIqacModel.fromJson(Map<String, dynamic> json) {
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
  int? aqarSNo;
  String? aqarParticular;
  String? aqarUpload;

  Data({this.id, this.aqarSNo, this.aqarParticular, this.aqarUpload});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    aqarSNo = json['aqarSNo'];
    aqarParticular = json['aqarParticular'];
    aqarUpload = json['aqarUpload'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['aqarSNo'] = this.aqarSNo;
    data['aqarParticular'] = this.aqarParticular;
    data['aqarUpload'] = this.aqarUpload;
    return data;
  }
}
