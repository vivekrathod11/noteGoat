import 'package:demo_api/beans/response_pojo/error_response.dart';

class ProfileResponse {
  int? status;
  ErrorResponse? error;
  Data? data;

  ProfileResponse({this.status, this.error, this.data});

  ProfileResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['error'] != null ? new ErrorResponse.fromJson(json['error']) : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.error != null) {
      data['error'] = this.error!.toJson();
    }
    return data;
  }
}

class Data {
  String? firstName;
  String? lastName;
  String? phone;
  String? email;

  Data({this.firstName, this.lastName, this.phone, this.email});

  Data.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    return data;
  }
}
