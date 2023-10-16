import 'package:demo_api/api_calls/api_service.dart';
import 'package:demo_api/beans/request_pojo/favourite_request.dart';
import 'package:demo_api/beans/request_pojo/recents_request.dart';
import 'package:demo_api/beans/request_pojo/uocoming_class_request.dart';
import 'package:demo_api/beans/request_pojo/view_request.dart';
import 'package:demo_api/beans/response_pojo/favourite_response.dart';
import 'package:demo_api/beans/response_pojo/recents_response.dart';
import 'package:demo_api/beans/response_pojo/response_profile.dart';
import 'package:demo_api/beans/response_pojo/upcoming_class_response.dart';
import 'package:demo_api/beans/response_pojo/view_response.dart';
import 'package:demo_api/utils/constants.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:dio/dio.dart';




class UserScreenController extends GetxController{
  var token;
  final box = GetStorage();
  late Dio dio;
  late ApiService apiService;




  //VIEW_LIST
  late ViewResponse viewResponse;
  var viewListResponseData = <ViewListResponseData>[].obs;


  var content;
  var pageable;
  var last;
  var totalPages;
  var totalElements;
  var sort;
  var first;
  var numberOfElements;
  var number;
  var size;
  var empty;




  //RECENT_LIST

  late RecentsResponse recentsResponse;
  var recentsDataList = <RecentsResponseData>[].obs;
  var feedback;
  var isFavourite;







  // FAVOURITE_LIST_RESPONSE
  late FavouriteListResponse favouriteListResponse;
  var favouriteDataList = <FavouriteListResponseData>[].obs;
  var sessionId;
  var sessionName;
  var directoryId;
  var noteName;
  var collegeName;
  var description;
  var status;
  var createdDate;
  var lastOpenedDate;





    // UPCOMING_CLASSES_RESPONSE
    late UpcomingClassResponse upcomingClassResponse;
    var upcomingClassDataList = <UpcomingClassData>[].obs;

    var noteId ;
    var name ;
    var directoryName;
    var professorName ;
    var timeZone ;



   // PROFILE_RESPONSE

   ProfileResponse profileResponse = ProfileResponse();
   var firstName = '';
   var lastName = '';
   var email = '';
   var phone = '';





   @override
   void onInit() {
    // TODO: implement onInit
    super.onInit();
    token = box.read(Constants.TOKEN);
    userUpcomingClass();
    userProfile(token);
    favouirateList();
    recentList();
    viewAllList();
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

  //USER_PROFILE

   userProfile(token) async {
   token = await box.read(Constants.TOKEN);

   dio = Dio();
   apiService = ApiService(dio);
   dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));

   final response = await apiService.getProfile("application/json", token, "Asia/Calcutta");
   print(response.toString());
   profileResponse = response;
   if(profileResponse.status == 1){
     firstName = response.data!.firstName!;
     lastName =  response.data!.lastName! ;
     email = response.data!.email! ;
     phone = response.data!.phone! ;

  }
   else{
     print("api fail");
  }
}


// USER_UPCOMING_CLASS

  userUpcomingClass() async{
    token = await box.read(Constants.TOKEN);
    UpcomingClassRequest request = UpcomingClassRequest();
    request.offset = 0;
    request.limit = 100;


    dio = Dio();
    apiService = ApiService(dio);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));


    final response = await apiService.upcomingClass("application/json", token, "Asia/Calcutta", request);
    print(response.toString());
    upcomingClassResponse = response;
    print(upcomingClassResponse.toString());
    if(upcomingClassResponse.status == 1){

      if(upcomingClassResponse.data!.isNotEmpty){
        upcomingClassDataList.value = upcomingClassResponse.data!;
      }

    }else {
      print("api fail");
    }
   }

   // USER_FAVOURITE_CLASS


   favouirateList()async{
     token = await box.read(Constants.TOKEN);
     FavouriteListRequest request = FavouriteListRequest();


     dio = Dio();
     apiService = ApiService(dio);
     dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));


     final response = await apiService.favouriteList("application/json", token, "Asia/Calcutta", request);
     favouriteListResponse = response;
     print(response.toString());

     if(favouriteListResponse.status == 1){
       if(favouriteListResponse.data! .isNotEmpty) {
         favouriteDataList.value = favouriteListResponse.data!;
       }
     }else{
       print("api fail");
     }
   }



   // RECENT_LIST

   recentList()async{
     token = await box.read(Constants.TOKEN);
     RecentsRequest request = RecentsRequest();
     request.noteId = "";
     request.offset = 0;
     request.limit = 100;

     dio = Dio();
     apiService = ApiService(dio);
     dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));


     final response = await apiService.recents("application/json", token, "Asia/Calcutta", request);
     recentsResponse = response;
     print(response.toString());

     if(recentsResponse.status == 1){
       if( recentsResponse.data!.isNotEmpty) {
         recentsDataList.value = recentsResponse.data!;
       }

     }else{
       print("api fail");
     }
   }



   //VIEW_ALL
   viewAllList()async{

     token = await box.read(Constants.TOKEN);
     ViewRequest request = ViewRequest();
     Filter filter = Filter();
     request.filter = filter;
     Pagination pagination = Pagination();
     pagination.size = 100;
     pagination.page = 0;
     pagination.sortBy = "";
     pagination.sortOrder = "desc";
     request.pagination = pagination;
     print(request);


     dio = Dio();
     apiService = ApiService(dio);
     dio.interceptors.add(LogInterceptor(requestBody: true,responseBody: true));

     final response = await apiService.viewAll("application/json", token, "Asia/Calcutta", request);
     viewResponse = response;
     print(response.toString());

     if(viewResponse.status == 1 ){
       if(viewResponse.data!.isNotEmpty){
         if(viewResponse.data!.isNotEmpty){
           viewListResponseData.value = viewResponse.data!;
         }
       }

     }else{
       print("api fail");
     }
   }


}

