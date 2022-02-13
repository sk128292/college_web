class CsssNaacModel {
  String? status;
  List<Data>? data;

  CsssNaacModel({this.status, this.data});

  CsssNaacModel.fromJson(Map<String, dynamic> json) {
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
  String? sssTitle;
  String? sssUpload;

  Data({this.id, this.sssTitle, this.sssUpload});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sssTitle = json['sssTitle'];
    sssUpload = json['sssUpload'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sssTitle'] = this.sssTitle;
    data['sssUpload'] = this.sssUpload;
    return data;
  }
}
