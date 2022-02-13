class CompositionIqacModel {
  String? status;
  List<Data>? data;

  CompositionIqacModel({this.status, this.data});

  CompositionIqacModel.fromJson(Map<String, dynamic> json) {
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
  String? compostionTitle;
  String? compositionFile;

  Data({this.id, this.compostionTitle, this.compositionFile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    compostionTitle = json['compostionTitle'];
    compositionFile = json['compositionFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['compostionTitle'] = this.compostionTitle;
    data['compositionFile'] = this.compositionFile;
    return data;
  }
}
