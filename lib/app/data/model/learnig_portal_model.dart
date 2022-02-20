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
  String? subjectCore;
  String? title;
  String? uploadBook;
  String? youtubeUrl;
  int? semCore;

  Data(
      {this.id,
      this.subjectCore,
      this.title,
      this.uploadBook,
      this.youtubeUrl,
      this.semCore});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectCore = json['subject_core'];
    title = json['title'];
    uploadBook = json['upload_book'];
    youtubeUrl = json['youtube_url'];
    semCore = json['sem_core'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject_core'] = this.subjectCore;
    data['title'] = this.title;
    data['upload_book'] = this.uploadBook;
    data['youtube_url'] = this.youtubeUrl;
    data['sem_core'] = this.semCore;
    return data;
  }
}
