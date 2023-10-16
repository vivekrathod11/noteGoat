import 'package:demo_api/user_screen/user_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserScreenController userScreenController = Get.put(UserScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 600.0,right: 600),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
              width: 350,height: 350,
               child:
                   Container(
                     child: Card(
                       color: Colors.amberAccent,
                       elevation: 10,
                       child: Column(
                         children: [
                         CircleAvatar(
                         radius: 60,
                          child: Image.asset("assets/images/goatn.png"),),
                           Padding(padding: EdgeInsets.only(top: 40)),
                           Text(userScreenController.firstName,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
                           Text(userScreenController.phone,style: TextStyle(fontSize: 15),),
                           Text('Prime Member',style: TextStyle(),),
                       ]
                       ),
                     )
                   ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      child: Card(shape: RoundedRectangleBorder(),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("LastName",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(userScreenController.lastName),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(shape: RoundedRectangleBorder(),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Email",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text(userScreenController.email),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(shape: RoundedRectangleBorder(),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("Male"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(shape: RoundedRectangleBorder(),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("DateOfBirth",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("dd/mm/yyyy"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Card(shape: RoundedRectangleBorder(),
                        elevation: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Class",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("xyz"),
                          ],
                        ),
                      ),
                    )
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
