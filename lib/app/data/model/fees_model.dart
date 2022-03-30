class FeesModel {
  String? status;
  List<Data>? data;

  FeesModel({this.status, this.data});

  FeesModel.fromJson(Map<String, dynamic> json) {
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
  String? particulars;
  String? stream;
  int? fee;

  Data({this.id, this.sNo, this.particulars, this.stream, this.fee});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    sNo = json['sNo'];
    particulars = json['particulars'];
    stream = json['stream'];
    fee = json['fee'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sNo'] = this.sNo;
    data['particulars'] = this.particulars;
    data['stream'] = this.stream;
    data['fee'] = this.fee;
    return data;
  }
}
