import 'package:demo_api/ui/profile_screen.dart';
import 'package:demo_api/user_login/login_screen.dart';
import 'package:demo_api/user_screen/user_screen_controller.dart';
import 'package:demo_api/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';


class NoteGoatScreen extends StatefulWidget {
  const NoteGoatScreen({super.key});

  @override
  State<NoteGoatScreen> createState() => _NoteGoatScreenState();
}

class _NoteGoatScreenState extends State<NoteGoatScreen> {



  UserScreenController userScreenController = Get.put(UserScreenController());
  bool _isStarred = false;


  void _toggleStar() {
    setState(() {
      _isStarred = !_isStarred;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: AppColors.colorWhite,
        toolbarHeight: 100,
        flexibleSpace: Container(
            child: Image.asset("assets/images/goatn.png",)
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ProfileScreen()));
          }, icon: Icon(Icons.person))
        ],
      ),

      drawer: Drawer(
          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.white)),
          elevation: 8, width: 300,
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 108.0,left: 10),
                child: Image.asset("assets/images/goatn.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 48.0,),
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 10),
                  leading: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NoteGoatScreen()));
                      },
                      child: Text('Home',style: TextStyle(fontSize: 20,))
                  ),
                  trailing:Text(""),
                  onTap: (){},
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: GestureDetector(
                    onTap: (){},
                    child: Text('Profile',style: TextStyle(fontSize: 20,))
                ),
                trailing:Text(""),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: GestureDetector(
                    onTap: (){},
                    child: Text('Support',style: TextStyle(fontSize: 20,))
                ),
                trailing:Text(""),
                onTap: (){},
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 10),
                leading: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Text('Logout',style: TextStyle(fontSize: 20,))
                ),
                trailing:Text(""),
                onTap: (){},
              ),

            ],
          ),
        )
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 150.0,right: 150.0,top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 200.0,height: 100.0,
                    color: AppColors.secondaryColor,
                    child: ElevatedButton(autofocus: false,clipBehavior: Clip.none,
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: LinearBorder.start()),
                      onPressed: (){},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,size: 60,color: AppColors.colorWhite,),
                          Text("Create New",style: TextStyle(color: AppColors.colorWhite,fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Row(
                    children: [
                      Container(
                        height: 100,width: 400,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Current Plan",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(height: 20,width: 250,
                                    child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                                        onPressed: (){},
                                        child: Text('Upgrage Account',style: TextStyle(color: AppColors.colorWhite),)),
                                  ),
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top:15 ,right: 300.0),
                              child: Text("FREE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,width: 400,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 200.0),
                              child: Text("Account Usage",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 200.0),
                              child: Container(width: 180,
                                  child: LinearPercentIndicator(
                                    percent: 0.4,
                                    lineHeight: 15,
                                    animation: true,
                                    progressColor: Colors.orange,

                                    barRadius: Radius.circular(40),
                                    padding: EdgeInsets.zero,
                                  ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:200.0),
                              child: Text("0 hrs of 3 hrs used"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 100,width: 220,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Hours Remaining",style: TextStyle(fontWeight: FontWeight.bold),),
                            Text("2 hrs 59 mins")
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
              ),
              Divider(height: 50,thickness: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("UpComing Scheduled Classes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: AppColors.colorBlack),),
                  TextButton(onPressed: (){},
                      child: Tooltip(
                        showDuration: Duration(seconds: 2),
                        waitDuration: Duration(seconds: 4),
                        height: 30,
                        message: "This session shows your class with scheduled time",
                        child: ElevatedButton(style: ElevatedButton.styleFrom(shape: CircleBorder(),backgroundColor: AppColors.secondaryColor,minimumSize:Size.fromRadius(5)),
                          onPressed: (){},
                          child: Text("i"),
                        ),
                      )
                  ),
                ],
              ),
              upComing(),
              Divider(height: 50,thickness: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Favorites",style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){},
                      child: Text("View All",style: TextStyle(color: AppColors.colorBlack,decoration: TextDecoration.underline),)
                  ),
                ],
              ),
              favoritesList(),
              Divider(height: 30,thickness: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recent",style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){},
                      child: Text("View All",style: TextStyle(color: AppColors.colorBlack,decoration: TextDecoration.underline),)
                  ),
                ],
              ),
             recentList(),
              Divider(height: 30,thickness: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("All",style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){},
                      child: Text("View All",style: TextStyle(color: AppColors.colorBlack,decoration: TextDecoration.underline),)
                  ),
                ],
              ),
              allList(),
            ],
          ),
        ),
      ),
    );
  }
  Widget favoritesList(){
    return Obx(() =>
      Container(
      height: 215.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: userScreenController.favouriteDataList.value.length ,
          itemBuilder: (context,index){
          var dataList = userScreenController.favouriteDataList.value[index];
          DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dataList.createdDate!);
          String formattedDate = DateFormat('dd-MM-yyyy HH:mm a').format(dateTime);


          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Material(
              elevation: 10,
              child: Container(
                width: 150,constraints: BoxConstraints(),
                child: Column(
                  children: [
                    Material(elevation: 1,
                      child: Container(height: 80,
                        child: Row(
                          mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 38.0),
                              child: IconButton(
                                icon: Icon(Icons.star, color: AppColors.colorBlack),
                                onPressed: _toggleStar,
                              ),
                            ),
                            Icon(Icons.file_present,size: 60,),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 38.0),
                              child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child : Padding(
                        padding: const EdgeInsets.only(right: 38.0,top: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children : [
                            Text(dataList.sessionName != null ? dataList.sessionName.toString(): "[session title]",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.drive_file_move_outline)),
                            Text(dataList.noteName != null ? dataList.noteName.toString(): "",style: TextStyle(fontSize: 10,color: Colors.blue)),
                            Text(formattedDate.toString(),style: TextStyle(fontSize: 10)),
                          ]
                        ),
                      ),
              ),

                  ],
                ),
              ),
            ),
          );
        }
        )
    ),);
  }
  Widget recentList(){
    return Obx(() =>
      Container(
        height: 215.0,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: userScreenController.recentsDataList.value.length ,
            itemBuilder: (context,index){
              var dataList = userScreenController.recentsDataList.value[index];
              DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dataList.createdDate!);
              String formattedDate = DateFormat('dd-MM-yyyy HH:mm a').format(dateTime);


              return  Padding(
                padding: const EdgeInsets.all(3.0),
                child: Material(
                  elevation: 10,
                  child: Container(
                    width: 150,constraints: BoxConstraints(),
                    child: Column(
                      children: [
                        Material(elevation: 2,
                          child: Container(height: 80,
                            child: Row(
                              mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 38.0),
                                  child: IconButton(
                                    icon: dataList.isFavourite!
                                        ? Icon(Icons.star, color: AppColors.colorBlack)
                                        : Icon(Icons.star_border),
                                    onPressed: _toggleStar,
                                  ),
                                ),
                                Icon(Icons.file_present,size: 60,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 38.0),
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child : Padding(
                            padding: const EdgeInsets.only(right: 38.0,top: 10),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children : [
                                  Text(dataList.sessionName != null ? dataList.sessionName.toString(): "[session title]",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.drive_file_move_outline)),
                                  Text(dataList.noteName != null ? dataList.noteName.toString(): "",style: TextStyle(fontSize: 10,color: Colors.blue)),
                                  Text(formattedDate.toString(),style: TextStyle(fontSize: 10)),
                                ]
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              );
            })

    ));
  }
  Widget allList(){
    return  Obx(() =>
        Container(
            height: 215.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: userScreenController.recentsDataList.value.length,
                itemBuilder: (context,index){
                  var dataList = userScreenController.recentsDataList.value[index];
                  DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(dataList.createdDate!);
                  String formattedDate = DateFormat('dd-MM-yyyy HH:mm a').format(dateTime);


                  return  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Material(
                      elevation: 10,
                      child: Container(
                        width: 150,constraints: BoxConstraints(),
                        child: Column(
                          children: [
                            Material(elevation: 2,
                              child: Container(height: 80,
                                child: Row(
                                  mainAxisAlignment :MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 48.0),
                                      child: Icon(Icons.file_present,size: 60,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 38.0),
                                      child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child : Padding(
                                padding: const EdgeInsets.only(right: 38.0,top: 10),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children : [
                                      Text(dataList.sessionName != null ? dataList.sessionName.toString(): "[session title]",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.drive_file_move_outline)),
                                      Text(dataList.noteName != null ? dataList.noteName.toString(): "",style: TextStyle(fontSize: 10,color: Colors.blue)),
                                      Text(formattedDate.toString(),style: TextStyle(fontSize: 10)),
                                    ]
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
                })

        ));
  }
  Widget upComing(){
    return Obx(() =>
      Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: userScreenController.upcomingClassDataList.value.length,
            itemBuilder: (context,index){
              var dataInfo = userScreenController.upcomingClassDataList.value[index];
              return  Padding(
                padding: const EdgeInsets.all(3.0),
                child: Material(elevation: 10,
                  child: Container(
                    width: 150,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(elevation: 2,
                          child: Container(
                            height: 80.0,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size.fromRadius(30),shape: CircleBorder(),backgroundColor: AppColors.secondaryColor),
                                  onPressed: (){},
                                  child: Icon(Icons.add,color: AppColors.colorWhite,size: 25,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0,bottom: 38),
                                  child: IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 5),
                          child: Text(dataInfo.name.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        ),
                     Padding(
                       padding: const EdgeInsets.only(top: 18.0,left: 5),
                       child: Container(height: 50,width: 50,
                         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(dataInfo.professorName.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                             Text(dataInfo.lastOpenedDate.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)
                           ],
                         ),


                          ),
                     ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
