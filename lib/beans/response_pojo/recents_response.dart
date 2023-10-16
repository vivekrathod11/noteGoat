import 'package:demo_api/beans/response_pojo/error_response.dart';


class RecentsResponse {
  int? status;
  List<RecentsResponseData>? data;
  ErrorResponse? error;

  RecentsResponse({this.status, this.data, this.error});

  RecentsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <RecentsResponseData>[];
      json['data'].forEach((v) {
        data!.add(new RecentsResponseData.fromJson(v));
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

class RecentsResponseData {
  int? sessionId;
  int? noteId;
  String? sessionName;
  String? noteName;
  String? directoryName;
  String? description;
  int? status;
  String? professorName;
  String? collegeName;
  int? createdDate;
  int? lastOpenedDate;
  bool? feedback;
  bool? isFavourite;

  RecentsResponseData(
      {this.sessionId,
        this.noteId,
        this.sessionName,
        this.noteName,
        this.directoryName,
        this.description,
        this.status,
        this.professorName,
        this.collegeName,
        this.createdDate,
        this.lastOpenedDate,
        this.feedback,
        this.isFavourite});

  RecentsResponseData.fromJson(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    noteId = json['noteId'];
    sessionName = json['sessionName'];
    noteName = json['noteName'];
    directoryName = json['directoryName'];
    description = json['description'];
    status = json['status'];
    professorName = json['professorName'];
    collegeName = json['collegeName'];
    createdDate = json['createdDate'];
    lastOpenedDate = json['lastOpenedDate'];
    feedback = json['feedback'];
    isFavourite = json['isFavourite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionId'] = this.sessionId;
    data['noteId'] = this.noteId;
    data['sessionName'] = this.sessionName;
    data['noteName'] = this.noteName;
    data['directoryName'] = this.directoryName;
    data['description'] = this.description;
    data['status'] = this.status;
    data['professorName'] = this.professorName;
    data['collegeName'] = this.collegeName;
    data['createdDate'] = this.createdDate;
    data['lastOpenedDate'] = this.lastOpenedDate;
    data['feedback'] = this.feedback;
    data['isFavourite'] = this.isFavourite;
    return data;
  }
}
