import 'package:demo_api/beans/response_pojo/error_response.dart';


class FavouriteListResponse {
  int? status;
  List<FavouriteListResponseData>? data;
  ErrorResponse? error;

  FavouriteListResponse({this.status, this.data, this.error});

  FavouriteListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <FavouriteListResponseData>[];
      json['data'].forEach((v) {
        data!.add(new FavouriteListResponseData.fromJson(v));
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

class FavouriteListResponseData {
  int? sessionId;
  String? sessionName;
  String? directoryId;
  String? directoryName;
  int? noteId;
  String? noteName;
  String? professorName;
  String? collegeName;
  String? description;
  int? status;
  int? createdDate;
  int? lastOpenedDate;

  FavouriteListResponseData(
      {this.sessionId,
        this.sessionName,
        this.directoryId,
        this.directoryName,
        this.noteId,
        this.noteName,
        this.professorName,
        this.collegeName,
        this.description,
        this.status,
        this.createdDate,
        this.lastOpenedDate});

  FavouriteListResponseData.fromJson(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    sessionName = json['sessionName'];
    directoryId = json['directoryId'];
    directoryName = json['directoryName'];
    noteId = json['noteId'];
    noteName = json['noteName'];
    professorName = json['professorName'];
    collegeName = json['collegeName'];
    description = json['description'];
    status = json['status'];
    createdDate = json['createdDate'];
    lastOpenedDate = json['lastOpenedDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionId'] = this.sessionId;
    data['sessionName'] = this.sessionName;
    data['directoryId'] = this.directoryId;
    data['directoryName'] = this.directoryName;
    data['noteId'] = this.noteId;
    data['noteName'] = this.noteName;
    data['professorName'] = this.professorName;
    data['collegeName'] = this.collegeName;
    data['description'] = this.description;
    data['status'] = this.status;
    data['createdDate'] = this.createdDate;
    data['lastOpenedDate'] = this.lastOpenedDate;
    return data;
  }
}
