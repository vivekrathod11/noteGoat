import 'package:demo_api/beans/request_pojo/favourite_request.dart';
import 'package:demo_api/beans/request_pojo/recents_request.dart';
import 'package:demo_api/beans/request_pojo/sign_in_request.dart';
import 'package:demo_api/beans/request_pojo/uocoming_class_request.dart';
import 'package:demo_api/beans/request_pojo/view_request.dart';
import 'package:demo_api/beans/response_pojo/favourite_response.dart';
import 'package:demo_api/beans/response_pojo/recents_response.dart';
import 'package:demo_api/beans/response_pojo/response_profile.dart';
import 'package:demo_api/beans/response_pojo/sign_in_response.dart';
import 'package:demo_api/beans/response_pojo/upcoming_class_response.dart';
import 'package:demo_api/beans/response_pojo/view_response.dart';
import 'package:demo_api/utils/constants.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'api_service.g.dart';








@RestApi(baseUrl:Constants.BASE_URL)
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl}) = _ApiService;
  final dio = Dio();
  static ApiService create(){
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true,requestBody: true));
    return ApiService(dio);
}
@POST(Constants.AUTH_LOGIN)
  Future<SignInResponse> userLogin(
    @Header("Content-Type")String contentType,
    @Body()SignInRequest request);


@GET(Constants.MY_PROFILE)
  Future<ProfileResponse> getProfile(
    @Header("Content-Type") String contentType,
    @Header("Authorization") String token,
    @Header("Askmee-Time-Zone") String timeZone,);



@POST(Constants.UPCOMING_CLASS)
  Future<UpcomingClassResponse> upcomingClass(
  @Header("Content-Type") String contentType,
  @Header("Authorization") String token,
  @Header("Askmee-Time-Zone") String timeZone,
  @Body() UpcomingClassRequest request);




@POST("session/favourite-list")
  Future<FavouriteListResponse> favouriteList(
    @Header("Content-Type") String contentType,
    @Header("Authorization") String token,
    @Header("Askmee-Time-Zone") String timeZone,
    @Body() FavouriteListRequest request);



@POST("session/recents")
  Future<RecentsResponse> recents(
    @Header("Content-Type") String contentType,
    @Header("Authorization") String token,
    @Header("Askmee-Time-Zone") String timeZone,
    @Body() RecentsRequest request);



@POST("hierarchy/view-all")
  Future<ViewResponse> viewAll(
    @Header("Content-Type") String contentType,
    @Header("Authorization") String token,
    @Header("Askmee-Time-Zone") String timeZone,
    @Body() ViewRequest request);



}
