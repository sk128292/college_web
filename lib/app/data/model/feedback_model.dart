class FeedbackModel {
  String? status;
  List<Data>? data;

  FeedbackModel({this.status, this.data});

  FeedbackModel.fromJson(Map<String, dynamic> json) {
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
  String? feedbackHeader;
  List<FeedbackHeaderData>? feedbackHeaderData;
  List<FeedbackCategory>? feedbackCategory;

  Data({this.feedbackHeader, this.feedbackHeaderData, this.feedbackCategory});

  Data.fromJson(Map<String, dynamic> json) {
    feedbackHeader = json['feedbackHeader'];
    if (json['feedback_Header_Data'] != null) {
      feedbackHeaderData = <FeedbackHeaderData>[];
      json['feedback_Header_Data'].forEach((v) {
        feedbackHeaderData!.add(new FeedbackHeaderData.fromJson(v));
      });
    }
    if (json['feedbackCategory'] != null) {
      feedbackCategory = <FeedbackCategory>[];
      json['feedbackCategory'].forEach((v) {
        feedbackCategory!.add(new FeedbackCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feedbackHeader'] = this.feedbackHeader;
    if (this.feedbackHeaderData != null) {
      data['feedback_Header_Data'] =
          this.feedbackHeaderData!.map((v) => v.toJson()).toList();
    }
    if (this.feedbackCategory != null) {
      data['feedbackCategory'] =
          this.feedbackCategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeedbackHeaderData {
  String? aboutFeedPara;

  FeedbackHeaderData({this.aboutFeedPara});

  FeedbackHeaderData.fromJson(Map<String, dynamic> json) {
    aboutFeedPara = json['aboutFeedPara'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aboutFeedPara'] = this.aboutFeedPara;
    return data;
  }
}

class FeedbackCategory {
  String? categoryName;
  String? categoryFormLink;
  List<About>? about;
  List<FeedbackCategoryData>? feedbackCategoryData;

  FeedbackCategory(
      {this.categoryName,
      this.categoryFormLink,
      this.about,
      this.feedbackCategoryData});

  FeedbackCategory.fromJson(Map<String, dynamic> json) {
    categoryName = json['categoryName'];
    categoryFormLink = json['categoryFormLink'];
    if (json['about'] != null) {
      about = <About>[];
      json['about'].forEach((v) {
        about!.add(new About.fromJson(v));
      });
    }
    if (json['feedbackCategoryData'] != null) {
      feedbackCategoryData = <FeedbackCategoryData>[];
      json['feedbackCategoryData'].forEach((v) {
        feedbackCategoryData!.add(new FeedbackCategoryData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryName'] = this.categoryName;
    data['categoryFormLink'] = this.categoryFormLink;
    if (this.about != null) {
      data['about'] = this.about!.map((v) => v.toJson()).toList();
    }
    if (this.feedbackCategoryData != null) {
      data['feedbackCategoryData'] =
          this.feedbackCategoryData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class About {
  String? aboutCategory;

  About({this.aboutCategory});

  About.fromJson(Map<String, dynamic> json) {
    aboutCategory = json['aboutCategory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aboutCategory'] = this.aboutCategory;
    return data;
  }
}

class FeedbackCategoryData {
  int? serialNo;
  String? sessionyearmodel;
  String? feedback;
  String? feedbackAnalysisReport;
  String? actionTakenReport;

  FeedbackCategoryData(
      {this.serialNo,
      this.sessionyearmodel,
      this.feedback,
      this.feedbackAnalysisReport,
      this.actionTakenReport});

  FeedbackCategoryData.fromJson(Map<String, dynamic> json) {
    serialNo = json['serial_no'];
    sessionyearmodel = json['sessionyearmodel'];
    feedback = json['feedback'];
    feedbackAnalysisReport = json['feedbackAnalysisReport'];
    actionTakenReport = json['actionTakenReport'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serial_no'] = this.serialNo;
    data['sessionyearmodel'] = this.sessionyearmodel;
    data['feedback'] = this.feedback;
    data['feedbackAnalysisReport'] = this.feedbackAnalysisReport;
    data['actionTakenReport'] = this.actionTakenReport;
    return data;
  }
}
