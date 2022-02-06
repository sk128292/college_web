class LearningPortalModel {
  int? id;
  String? title;
  String? subject;
  String? uploadBook;
  String? youtubeUrl;

  LearningPortalModel(
      {this.id, this.title, this.subject, this.uploadBook, this.youtubeUrl});

  LearningPortalModel.fromJson(Map<String, dynamic> json) {
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
