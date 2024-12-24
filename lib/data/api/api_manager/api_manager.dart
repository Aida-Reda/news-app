import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/data/api/api_manager/model/news_response/NewsResponse.dart';
import 'package:news_app/data/api/api_manager/model/sources_response/Sources_response.dart';
class ApiManager{
  static const  String baseUrl = 'newsapi.org';
  static const String apiKey = '36b38e65130c4b99904958ebcb597bdc';

 static Future<SourcesResponse> getSources({required String categoryId})async{
   Uri url = Uri.http(
     baseUrl,
     '/v2/top-headlines/sources',
     {
       'apiKey': apiKey,
       'category' : categoryId
     }
   );
     var response = await http.get(url);
     var json = jsonDecode(response.body);
     SourcesResponse sourceResponse = SourcesResponse.fromJson(json);
     return sourceResponse ;

  }

  static Future<NewsResponse> getNews(String sourceId)async{
   Uri url = Uri.https(
       baseUrl,
       '/v2/everything',
     {
       'apiKey': apiKey,
       'sources' : sourceId
     }
   );
   var response = await http.get(url) ;
   ///....String data ... to json data
   var json = jsonDecode(response.body) ;
   var newsResponse = NewsResponse.fromJson(json);
   return newsResponse ;
  }
}