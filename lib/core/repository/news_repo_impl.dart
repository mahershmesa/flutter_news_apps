import 'package:flutter_ui/core/model/article.dart';
import 'package:flutter_ui/core/model/news_response_model.dart';
import 'package:flutter_ui/core/repository/news_repo.dart';
import 'package:flutter_ui/service/http_service.dart';
import 'package:flutter_ui/service/http_service_impl.dart';
import 'package:get/get.dart';

class NewsRepoImpl implements NewsRepo{

late HttpService _httpService;
NewsRepoImpl(){
  _httpService = Get.put(HttpServiceImpl());
  _httpService.init();
}


  @override
  Future<List<Article>> getNewsHeadline()async {
    // TODO: implement getNewsHeadline
    try {
      final Response =await _httpService.getRequest("/v2/top-headlines?country=us");
      final paesedResponse = NewsResponse.fromJson(Response.data);
      return paesedResponse.articles;

    } on Exception catch (e) {
      print(e);
      return getNewsHeadline();
    }
  }

  @override
  Future<List<Article>> getSearchedNews(String query) async{
    // TODO: implement getSearchedNews
  try {
      final Response =await _httpService.getRequest("/v2/everything?q=$query");
      final paesedResponse = NewsResponse.fromJson(Response.data);
      return paesedResponse.articles;

    } on Exception catch (e) {
      print(e);
      return getSearchedNews(query);
    }
  }

}