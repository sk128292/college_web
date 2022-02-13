class AboutIqacModel {
  String? status;
  List<Data>? data;

  AboutIqacModel({this.status, this.data});

  AboutIqacModel.fromJson(Map<String, dynamic> json) {
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
  String? aboutTitle;
  String? iqacLogo;
  String? aboutIqac;

  Data({this.id, this.aboutTitle, this.iqacLogo, this.aboutIqac});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    aboutTitle = json['aboutTitle'];
    iqacLogo = json['iqacLogo'];
    aboutIqac = json['aboutIqac'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['aboutTitle'] = this.aboutTitle;
    data['iqacLogo'] = this.iqacLogo;
    data['aboutIqac'] = this.aboutIqac;
    return data;
  }
}
