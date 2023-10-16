import 'package:demo_api/beans/response_pojo/error_response.dart';

class SignInResponse {
  int? status;
  SignInData? data;
  ErrorResponse? error;

  SignInResponse({this.status, this.data, this.error});

  SignInResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new SignInData.fromJson(json['data']) : null;
    error = json['error'] != null ? new ErrorResponse.fromJson(json['error']) : null;
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

class SignInData {
  String? token;
  int? rollId;
  bool? initialLogin;

  SignInData({this.token, this.rollId, this.initialLogin});

  SignInData.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    rollId = json['rollId'];
    initialLogin = json['initialLogin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['rollId'] = this.rollId;
    data['initialLogin'] = this.initialLogin;
    return data;
  }
}

