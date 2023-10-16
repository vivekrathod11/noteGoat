import 'package:demo_api/utils/app_colors.dart';
import 'package:flutter/material.dart';



class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Center(
                child: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,),),
              ),
            ),

               Padding(
                 padding: const EdgeInsets.only(left: 138.0),
                 child: Image.asset("assets/images/goatn1.png",),
               ),

            Center(heightFactor: 3,
              child: Container(height: 45.0,width: 500,
                child: TextFormField(

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
            ),
            Center(
              child: Container(
                height: 45.0,width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  onPressed: (){},
                  child: Text("Request a reset link",style: TextStyle(color: AppColors.colorWhite,fontSize: 15.0),),
                ),
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 28.0),
               child: Center(
                 child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: Text("Cancel",style: TextStyle(color: AppColors.secondaryColor,fontSize: 15.0),)),
               ),
             ),
          ],
        ),
      ),
    );
  }
}
