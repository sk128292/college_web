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
  String? aboutTitle;
  List<ParaAbout>? paraAbout;

  Data({this.aboutTitle, this.paraAbout});

  Data.fromJson(Map<String, dynamic> json) {
    aboutTitle = json['aboutTitle'];
    if (json['para_about'] != null) {
      paraAbout = <ParaAbout>[];
      json['para_about'].forEach((v) {
        paraAbout!.add(new ParaAbout.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aboutTitle'] = this.aboutTitle;
    if (this.paraAbout != null) {
      data['para_about'] = this.paraAbout!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ParaAbout {
  String? aboutIqac;

  ParaAbout({this.aboutIqac});

  ParaAbout.fromJson(Map<String, dynamic> json) {
    aboutIqac = json['aboutIqac'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aboutIqac'] = this.aboutIqac;
    return data;
  }
}
