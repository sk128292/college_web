class PoPsoIqacModel {
  String? status;
  List<Data>? data;

  PoPsoIqacModel({this.status, this.data});

  PoPsoIqacModel.fromJson(Map<String, dynamic> json) {
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
  String? poPsCoTitle;
  int? iqacStream;
  int? iqacSubject;

  Data({this.id, this.poPsCoTitle, this.iqacStream, this.iqacSubject});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    poPsCoTitle = json['poPsCoTitle'];
    iqacStream = json['iqacStream'];
    iqacSubject = json['iqacSubject'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['poPsCoTitle'] = this.poPsCoTitle;
    data['iqacStream'] = this.iqacStream;
    data['iqacSubject'] = this.iqacSubject;
    return data;
  }
}
