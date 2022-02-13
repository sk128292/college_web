class LearningPortalModel {
  String? status;
  List<Data>? data;

  LearningPortalModel({this.status, this.data});

  LearningPortalModel.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? subject;
  String? uploadBook;
  String? youtubeUrl;

  Data({this.id, this.title, this.subject, this.uploadBook, this.youtubeUrl});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    subject = json['subject'];
    uploadBook = json['upload_book'];
    youtubeUrl = json['youtube_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subject'] = this.subject;
    data['upload_book'] = this.uploadBook;
    data['youtube_url'] = this.youtubeUrl;
    return data;
  }
}
