import 'package:demo_api/api_calls/api_service.dart';
import 'package:demo_api/beans/request_pojo/sign_in_request.dart';
import 'package:demo_api/beans/response_pojo/sign_in_response.dart';
import 'package:demo_api/user_screen/user_screen.dart';
import 'package:demo_api/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';





class LoginController extends GetxController {

  late Dio dio;
  late ApiService apiService;

  bool passwordVisible = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  var email = ''.obs;
  var password = ''.obs;
  final box = GetStorage();
  late SignInResponse signInResponse;



  loginUser() async {
    SignInRequest request = SignInRequest();
    request.username = emailController.text;
    request.password = passwordController.text;
    request.isMobile = true;
    request.deviceId = "1234567890";
    print(request);

    dio = Dio();
    apiService = ApiService(dio);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

    final response = await apiService.userLogin("application/json", request);

    signInResponse = response;
    if (signInResponse.status == 1) {
      var token = "Token " + signInResponse.data!.token!;
      box.write(Constants.TOKEN, token);
      print("token:" + box.read(Constants.TOKEN));
      print(box.read(Constants.TOKEN));
      Get.to(()=> NoteGoatScreen());
    } else {
      print("ApiFail");
    }



  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  emailValid(var emailId) {
    bool emailValid = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(emailId!);
    return emailValid;
  }

  passwordValid(var passwordText) {
    bool passwordValid =  RegExp( r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(passwordText!);
    return passwordValid;
  }

  validation(var emailId,var passwordText) {

     if(emailValid(emailId) && passwordValid(passwordText)){
       // Call the API
       email.value = '';
       password.value = '';
         loginUser();
     } else {
       if(!emailValid(emailId)) {
          // MSG = Enter the valid email ID
         email.value = 'Please enter the valid Email ID';
       } else {
         // Enter the valid password
         email.value = '';
         password.value = 'Please enter the valid Password';
       }
     }
  }
}


