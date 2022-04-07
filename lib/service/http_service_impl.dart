import 'package:dio/dio.dart';
import 'package:flutter_ui/service/http_service.dart';


const Base_url="https://newsapi.org/";
const api_key="d193873387514097b87b98e822bb93e5";



class HttpServiceImpl implements HttpService{

  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async{
    // TODO: implement getRequest

    Response response;
    try {
      response = await _dio.get(url);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptors(){
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (error){
        print(error.message);
      },
      onRequest: (request){
        print("${request.method} | ${request.path}");
      },
      onResponse: (response){
        print("${response.statusCode} ${response.statusMessage} ${response.data}");
      }
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: Base_url,
      headers: {"Authorization" : "Bearer $api_key"}
    ));

    initializeInterceptors();
  }

}