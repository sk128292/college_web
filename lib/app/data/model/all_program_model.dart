class allProgramModel {
  String? status;
  List<Data>? data;

  allProgramModel({this.status, this.data});

  allProgramModel.fromJson(Map<String, dynamic> json) {
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
  String? facultyOfSubjects;
  List<FacultyOfSubjectsData>? facultyOfSubjectsData;

  Data({this.facultyOfSubjects, this.facultyOfSubjectsData});

  Data.fromJson(Map<String, dynamic> json) {
    facultyOfSubjects = json['facultyOfSubjects'];
    if (json['faculty_of_subjects_data'] != null) {
      facultyOfSubjectsData = <FacultyOfSubjectsData>[];
      json['faculty_of_subjects_data'].forEach((v) {
        facultyOfSubjectsData!.add(new FacultyOfSubjectsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['facultyOfSubjects'] = this.facultyOfSubjects;
    if (this.facultyOfSubjectsData != null) {
      data['faculty_of_subjects_data'] =
          this.facultyOfSubjectsData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FacultyOfSubjectsData {
  String? departmentName;
  List<DeptUnderFacultyOfSubjects>? deptUnderFacultyOfSubjects;

  FacultyOfSubjectsData({this.departmentName, this.deptUnderFacultyOfSubjects});

  FacultyOfSubjectsData.fromJson(Map<String, dynamic> json) {
    departmentName = json['departmentName'];
    if (json['dept_under_faculty_of_subjects'] != null) {
      deptUnderFacultyOfSubjects = <DeptUnderFacultyOfSubjects>[];
      json['dept_under_faculty_of_subjects'].forEach((v) {
        deptUnderFacultyOfSubjects!
            .add(new DeptUnderFacultyOfSubjects.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['departmentName'] = this.departmentName;
    if (this.deptUnderFacultyOfSubjects != null) {
      data['dept_under_faculty_of_subjects'] =
          this.deptUnderFacultyOfSubjects!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DeptUnderFacultyOfSubjects {
  String? briefIntroduction;
  String? teacherprofiles;
  String? syllabus;
  String? elearning;

  DeptUnderFacultyOfSubjects(
      {this.briefIntroduction,
      this.teacherprofiles,
      this.syllabus,
      this.elearning});

  DeptUnderFacultyOfSubjects.fromJson(Map<String, dynamic> json) {
    briefIntroduction = json['briefIntroduction'];
    teacherprofiles = json['teacherprofiles'];
    syllabus = json['syllabus'];
    elearning = json['elearning'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['briefIntroduction'] = this.briefIntroduction;
    data['teacherprofiles'] = this.teacherprofiles;
    data['syllabus'] = this.syllabus;
    data['elearning'] = this.elearning;
    return data;
  }
}
