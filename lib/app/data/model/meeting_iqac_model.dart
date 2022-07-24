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
  String? sessionyearmodel;
  List<IqacMinutesOfIqacMeeting>? iqacMinutesOfIqacMeeting;

  Data({this.sessionyearmodel, this.iqacMinutesOfIqacMeeting});

  Data.fromJson(Map<String, dynamic> json) {
    sessionyearmodel = json['sessionyearmodel'];
    if (json['iqacMinutesOfIqacMeeting'] != null) {
      iqacMinutesOfIqacMeeting = <IqacMinutesOfIqacMeeting>[];
      json['iqacMinutesOfIqacMeeting'].forEach((v) {
        iqacMinutesOfIqacMeeting!.add(new IqacMinutesOfIqacMeeting.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionyearmodel'] = this.sessionyearmodel;
    if (this.iqacMinutesOfIqacMeeting != null) {
      data['iqacMinutesOfIqacMeeting'] =
          this.iqacMinutesOfIqacMeeting!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IqacMinutesOfIqacMeeting {
  int? meetingNo;
  String? heldOn;
  String? minutesOfIqacMeetingFile;

  IqacMinutesOfIqacMeeting(
      {this.meetingNo, this.heldOn, this.minutesOfIqacMeetingFile});

  IqacMinutesOfIqacMeeting.fromJson(Map<String, dynamic> json) {
    meetingNo = json['meetingNo'];
    heldOn = json['heldOn'];
    minutesOfIqacMeetingFile = json['minutesOfIqacMeetingFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meetingNo'] = this.meetingNo;
    data['heldOn'] = this.heldOn;
    data['minutesOfIqacMeetingFile'] = this.minutesOfIqacMeetingFile;
    return data;
  }
}
