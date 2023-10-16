import 'package:demo_api/ui/forgot_password_screen.dart';
import 'package:demo_api/user_login/login_controller.dart';
import 'package:demo_api/user_screen/user_screen.dart';
import 'package:demo_api/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController loginController = Get.put(LoginController());
  bool passwordVisible = true;
  bool firstValue = false;
  bool secondValue = false;
  bool isHovered = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

          child: Column(
            children: [
               Padding(
                 padding: const EdgeInsets.only(left: 128.0,),
                 child: Image.asset("assets/images/goatn1.png"),
               ),

              Form(
                  child: Padding(
                    padding: EdgeInsets.only(left: 300.0, right: 300.0,),
                    child: Column(
                      children: [
                        Container(
                          height: 46,width: 500,
                          child: TextFormField(
                            controller: loginController.emailController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 35,),
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: AppColors.colorBlack),
                              ),
                              errorStyle: TextStyle(fontSize: 50),
                              labelText: "Email",labelStyle: TextStyle(fontSize: 15),
                              hintText: "Enter your user name",hintStyle: TextStyle(fontSize: 15),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        Obx(() => Text(loginController.email.toString()),),
                        SizedBox(height: 15.0,),
                        Container(
                          height: 45,width: 500,
                          child: TextFormField(
                            cursorHeight: 20.0,
                            obscureText: passwordVisible,
                            controller: loginController.passwordController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 35.0),
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),),
                              labelText: "Password",labelStyle: TextStyle(fontSize: 15),
                              hintText: "Enter your Password",hintStyle: TextStyle(fontSize: 15),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    passwordVisible = !passwordVisible;
                                  });
                                  },
                                icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off,size: 20,color: AppColors.secondaryColor,),
                              ),
                            ),

                            keyboardType: TextInputType.visiblePassword,),
                        ),
                        Obx(() => Text(loginController.password.toString()),),
                        Padding(
                          padding:  EdgeInsets.only(left: 228.0,),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: firstValue,
                                  onChanged: (value){
                                setState(() {
                                  firstValue = value!;
                                });
                                  }
                              ),
                              Text('Keep me logged in',style :TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 228.0,top: 2.0),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: secondValue,
                                  onChanged: (value){
                                    setState(() {
                                      secondValue = value!;
                                    });
                                  }
                              ),
                              Text("Remember my username",style :TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 18.0),
                          child: Container(
                            height: 45.0,width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                              onPressed: (){
                             // loginController.validation(
                             //        loginController.emailController.text.toString().trim(),
                             //        loginController.passwordController.text.toString().trim()
                             //    );
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => NoteGoatScreen()));
                              },
                              child: Text("Continue with Email",style: TextStyle(color: AppColors.colorWhite,fontSize: 15.0),),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 15.0),
                          child: Container(
                            height: 45.0,width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                              onPressed: (){},
                              child: Text("Continue with Google",style: TextStyle(color: AppColors.colorWhite,fontSize: 15.0),),
                            ),
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 15.0),
                          child: Container(
                            height: 45.0,width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.colorBlack,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                              onPressed: (){},
                              child: Text("Sign Up",style: TextStyle(color: AppColors.colorWhite,fontSize: 15.0),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30.0,top: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgotPassword()));
                                    }, child: Text("Reset Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.lightGreenAccent))
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                  ),
              )
            ]
          ),
      ),
    );
  }
}



