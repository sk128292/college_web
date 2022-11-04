class newsModel {
  String? status;
  List<Data>? data;

  newsModel({this.status, this.data});

  newsModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? newsCover;

  Data({this.title, this.newsCover});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    newsCover = json['newsCover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['newsCover'] = this.newsCover;
    return data;
  }
}
