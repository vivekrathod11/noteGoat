import 'package:demo_api/beans/response_pojo/error_response.dart';

class UpcomingClassResponse {
  int? status;
  List<UpcomingClassData>? data;
  ErrorResponse? error;

  UpcomingClassResponse({this.status, this.data, this.error});

  UpcomingClassResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <UpcomingClassData>[];
      json['data'].forEach((v) {
        data!.add(new UpcomingClassData.fromJson(v));
      });
    }
    error = json['error'] != null ? new ErrorResponse.fromJson(json['error']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    return data;
  }
}

class UpcomingClassData {
  int? noteId;
  String? name;
  String? directoryName;
  String? professorName;
  String? collegeName;
  String? timezone;
  int? lastOpenedDate;
  int? type;
  List<NoteScheduleResponse>? noteScheduleResponse;

  UpcomingClassData(
      {this.noteId,
        this.name,
        this.directoryName,
        this.professorName,
        this.collegeName,
        this.timezone,
        this.lastOpenedDate,
        this.type,
        this.noteScheduleResponse});

  UpcomingClassData.fromJson(Map<String, dynamic> json) {
    noteId = json['noteId'];
    name = json['name'];
    directoryName = json['directoryName'];
    professorName = json['professorName'];
    collegeName = json['collegeName'];
    timezone = json['timezone'];
    lastOpenedDate = json['lastOpenedDate'];
    type = json['type'];
    if (json['noteScheduleResponse'] != null) {
      noteScheduleResponse = <NoteScheduleResponse>[];
      json['noteScheduleResponse'].forEach((v) {
        noteScheduleResponse!.add(new NoteScheduleResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noteId'] = this.noteId;
    data['name'] = this.name;
    data['directoryName'] = this.directoryName;
    data['professorName'] = this.professorName;
    data['collegeName'] = this.collegeName;
    data['timezone'] = this.timezone;
    data['lastOpenedDate'] = this.lastOpenedDate;
    data['type'] = this.type;
    if (this.noteScheduleResponse != null) {
      data['noteScheduleResponse'] =
          this.noteScheduleResponse!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NoteScheduleResponse {
  String? day;
  String? time;

  NoteScheduleResponse({this.day, this.time});

  NoteScheduleResponse.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['time'] = this.time;
    return data;
  }
}


