class MeetingIqacModel {
  String? status;
  List<Data>? data;

  MeetingIqacModel({this.status, this.data});

  MeetingIqacModel.fromJson(Map<String, dynamic> json) {
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
  int? meetingNo;
  String? heldOn;
  String? minutesOfIqacMeetingFile;
  String? iqacMinutesOfMeetingName;

  Data(
      {this.id,
      this.meetingNo,
      this.heldOn,
      this.minutesOfIqacMeetingFile,
      this.iqacMinutesOfMeetingName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    meetingNo = json['meetingNo'];
    heldOn = json['heldOn'];
    minutesOfIqacMeetingFile = json['minutesOfIqacMeetingFile'];
    iqacMinutesOfMeetingName = json['iqacMinutesOfMeetingName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['meetingNo'] = this.meetingNo;
    data['heldOn'] = this.heldOn;
    data['minutesOfIqacMeetingFile'] = this.minutesOfIqacMeetingFile;
    data['iqacMinutesOfMeetingName'] = this.iqacMinutesOfMeetingName;
    return data;
  }
}
