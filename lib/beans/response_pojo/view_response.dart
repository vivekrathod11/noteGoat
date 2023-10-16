import 'package:demo_api/beans/response_pojo/error_response.dart';

class ViewResponse {
  int? status;
  List<ViewListResponseData>? data;
  ErrorResponse? error;

  ViewResponse({this.status, this.data, this.error});

  ViewResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <ViewListResponseData>[];
      json['data'].forEach((v) {
        data!.add(new ViewListResponseData.fromJson(v));
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

class ViewListResponseData {
  int? noteId;
  String? name;
  String? description;
  String? professorName;
  int? status;
  int? type;
  int? createdDate;
  Null? timezone;
  Null? lastOpenedDate;
  int? sessionCount;
  int? visibleType;
  List<SessionsResponse>? sessionsResponse;

  ViewListResponseData(
      {this.noteId,
        this.name,
        this.description,
        this.professorName,
        this.status,
        this.type,
        this.createdDate,
        this.timezone,
        this.lastOpenedDate,
        this.sessionCount,
        this.visibleType,
        this.sessionsResponse});

  ViewListResponseData.fromJson(Map<String, dynamic> json) {
    noteId = json['noteId'];
    name = json['name'];
    description = json['description'];
    professorName = json['professorName'];
    status = json['status'];
    type = json['type'];
    createdDate = json['createdDate'];
    timezone = json['timezone'];
    lastOpenedDate = json['lastOpenedDate'];
    visibleType = json['visibleType'];
    sessionCount = json['sessionCount'];
    if (json['sessionsResponse'] != null) {
      sessionsResponse = <SessionsResponse>[];
      json['sessionsResponse'].forEach((v) {
        sessionsResponse!.add(new SessionsResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noteId'] = this.noteId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['professorName'] = this.professorName;
    data['status'] = this.status;
    data['type'] = this.type;
    data['createdDate'] = this.createdDate;
    data['timezone'] = this.timezone;
    data['lastOpenedDate'] = this.lastOpenedDate;
    data['visibleType'] = this.visibleType;
    data['sessionCount'] = this.sessionCount;
    if (this.sessionsResponse != null) {
      data['sessionsResponse'] =
          this.sessionsResponse!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SessionsResponse {
  int? sessionId;
  String? name;
  String? description;
  int? status;
  Null? type;
  int? createdDate;
  bool? feedback;
  bool? isFavourite;
  Null? professorName;
  Null? collegeName;
  Null? lastOpenedDate;
  int? recordsCount;
  List<SessionRecordsResponse>? sessionRecordsResponse;

  SessionsResponse(
      {this.sessionId,
        this.name,
        this.description,
        this.status,
        this.type,
        this.createdDate,
        this.feedback,
        this.isFavourite,
        this.professorName,
        this.collegeName,
        this.lastOpenedDate,
        this.recordsCount,
        this.sessionRecordsResponse});

  SessionsResponse.fromJson(Map<String, dynamic> json) {
    sessionId = json['sessionId'];
    name = json['name'];
    description = json['description'];
    status = json['status'];
    type = json['type'];
    createdDate = json['createdDate'];
    feedback = json['feedback'];
    isFavourite = json['isFavourite'];
    professorName = json['professorName'];
    collegeName = json['collegeName'];
    lastOpenedDate = json['lastOpenedDate'];
    recordsCount = json['recordsCount'];
    if (json['sessionRecordsResponse'] != null) {
      sessionRecordsResponse = <SessionRecordsResponse>[];
      json['sessionRecordsResponse'].forEach((v) {
        sessionRecordsResponse!.add(new SessionRecordsResponse.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionId'] = this.sessionId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['status'] = this.status;
    data['type'] = this.type;
    data['createdDate'] = this.createdDate;
    data['feedback'] = this.feedback;
    data['isFavourite'] = this.isFavourite;
    data['professorName'] = this.professorName;
    data['collegeName'] = this.collegeName;
    data['lastOpenedDate'] = this.lastOpenedDate;
    data['recordsCount'] = this.recordsCount;
    if (this.sessionRecordsResponse != null) {
      data['sessionRecordsResponse'] =
          this.sessionRecordsResponse!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SessionRecordsResponse {
  int? sessionRecordId;
  int? sessionRecordRecordingId;
  String? ogData;
  String? ogDataRevise;
  String? aiData;
  String? aiDataRevise;
  int? startTime;
  int? durationInMillis;
  String? sections;
  String? summary;
  int? status;
  int? createdDate;

  SessionRecordsResponse(
      {this.sessionRecordId,
        this.sessionRecordRecordingId,
        this.ogData,
        this.ogDataRevise,
        this.aiData,
        this.aiDataRevise,
        this.startTime,
        this.durationInMillis,
        this.sections,
        this.summary,
        this.status,
        this.createdDate});

  SessionRecordsResponse.fromJson(Map<String, dynamic> json) {
    sessionRecordId = json['sessionRecordId'];
    sessionRecordRecordingId = json['sessionRecordRecordingId'];
    ogData = json['ogData'];
    ogDataRevise = json['ogDataRevise'];
    aiData = json['aiData'];
    aiDataRevise = json['aiDataRevise'];
    startTime = json['startTime'];
    durationInMillis = json['durationInMillis'];
    sections = json['sections'];
    summary = json['summary'];
    status = json['status'];
    createdDate = json['createdDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sessionRecordId'] = this.sessionRecordId;
    data['sessionRecordRecordingId'] = this.sessionRecordRecordingId;
    data['ogData'] = this.ogData;
    data['ogDataRevise'] = this.ogDataRevise;
    data['aiData'] = this.aiData;
    data['aiDataRevise'] = this.aiDataRevise;
    data['startTime'] = this.startTime;
    data['durationInMillis'] = this.durationInMillis;
    data['sections'] = this.sections;
    data['summary'] = this.summary;
    data['status'] = this.status;
    data['createdDate'] = this.createdDate;
    return data;
  }
}
