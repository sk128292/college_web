class CalenderIqacModel {
  String? status;
  List<Data>? data;

  CalenderIqacModel({this.status, this.data});

  CalenderIqacModel.fromJson(Map<String, dynamic> json) {
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
  String? calenderType;
  List<TypeCalenders>? typeCalenders;

  Data({this.calenderType, this.typeCalenders});

  Data.fromJson(Map<String, dynamic> json) {
    calenderType = json['calenderType'];
    if (json['typeCalenders'] != null) {
      typeCalenders = <TypeCalenders>[];
      json['typeCalenders'].forEach((v) {
        typeCalenders!.add(new TypeCalenders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calenderType'] = this.calenderType;
    if (this.typeCalenders != null) {
      data['typeCalenders'] =
          this.typeCalenders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TypeCalenders {
  String? calenderTitle;
  String? calenderFile;

  TypeCalenders({this.calenderTitle, this.calenderFile});

  TypeCalenders.fromJson(Map<String, dynamic> json) {
    calenderTitle = json['calenderTitle'];
    calenderFile = json['calenderFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calenderTitle'] = this.calenderTitle;
    data['calenderFile'] = this.calenderFile;
    return data;
  }
}
