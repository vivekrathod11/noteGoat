import 'dart:async';
import 'package:demo_api/user_login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';




void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Goat',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder:(context) => LoginScreen()),),);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff9ed7bf),
      child: Padding(
        padding: const EdgeInsets.only(left: 128.0),
        child: Image.asset("assets/images/goatn1.png"),
      ),

    );
  }
}


