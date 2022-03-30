class AcademicTimeTableModel {
  String? status;
  List<Data>? data;

  AcademicTimeTableModel({this.status, this.data});

  AcademicTimeTableModel.fromJson(Map<String, dynamic> json) {
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
  String? facultyTimetable;
  String? classTimetable;

  Data({this.id, this.title, this.facultyTimetable, this.classTimetable});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    facultyTimetable = json['facultyTimetable'];
    classTimetable = json['classTimetable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['facultyTimetable'] = this.facultyTimetable;
    data['classTimetable'] = this.classTimetable;
    return data;
  }
}
