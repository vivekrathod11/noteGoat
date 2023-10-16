class SignInRequest {
  String? username;
  String? password;
  bool? isMobile;
  bool? rememberMe;
  String? deviceId;

  SignInRequest(
      {this.username,
        this.password,
        this.isMobile,
        this.rememberMe,
        this.deviceId});

  SignInRequest.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    isMobile = json['isMobile'];
    rememberMe = json['rememberMe'];
    deviceId = json['deviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['isMobile'] = this.isMobile;
    data['rememberMe'] = this.rememberMe;
    data['deviceId'] = this.deviceId;
    return data;
  }
}
