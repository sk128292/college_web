// class NotificationIqacModel {
//   String? status;
//   List<Data>? data;

//   NotificationIqacModel({this.status, this.data});

//   NotificationIqacModel.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int? id;
//   String? notificationTitle;
//   String? notificationFile;

//   Data({this.id, this.notificationTitle, this.notificationFile});

//   Data.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     notificationTitle = json['notificationTitle'];
//     notificationFile = json['notificationFile'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['notificationTitle'] = this.notificationTitle;
//     data['notificationFile'] = this.notificationFile;
//     return data;
//   }
// }

class NotificationIqacModel {
  String? status;
  List<Data>? data;

  NotificationIqacModel({this.status, this.data});

  NotificationIqacModel.fromJson(Map<String, dynamic> json) {
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
  List<Roles>? roles;
  String? notificationTitle;
  String? notificationFile;

  Data({this.id, this.roles, this.notificationTitle, this.notificationFile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['roles'] != null) {
      roles = <Roles>[];
      json['roles'].forEach((v) {
        roles!.add(new Roles.fromJson(v));
      });
    }
    notificationTitle = json['notificationTitle'];
    notificationFile = json['notificationFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.roles != null) {
      data['roles'] = this.roles!.map((v) => v.toJson()).toList();
    }
    data['notificationTitle'] = this.notificationTitle;
    data['notificationFile'] = this.notificationFile;
    return data;
  }
}

class Roles {
  int? id;
  int? serialNo;
  String? name;
  String? designation;
  String? roleInIqac;
  int? iqacNotificationRole;

  Roles(
      {this.id,
      this.serialNo,
      this.name,
      this.designation,
      this.roleInIqac,
      this.iqacNotificationRole});

  Roles.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serialNo = json['serial_no'];
    name = json['name'];
    designation = json['designation'];
    roleInIqac = json['roleInIqac'];
    iqacNotificationRole = json['iqacNotificationRole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['serial_no'] = this.serialNo;
    data['name'] = this.name;
    data['designation'] = this.designation;
    data['roleInIqac'] = this.roleInIqac;
    data['iqacNotificationRole'] = this.iqacNotificationRole;
    return data;
  }
}
