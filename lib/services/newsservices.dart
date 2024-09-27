import 'package:dio/dio.dart';
import 'package:newsapp/models/newsmodel.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

Future<List<NewsModel>>  getNews( {required String caregory}) async {
    try {
  Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2f7949d0e79c419bac67e231fcb81eca&category=$caregory');
  Map<String, dynamic> jsonData = response.data;
  List<dynamic> articles = jsonData["articles"];
  List<NewsModel> articlesList = [];
  
  for (var element in articles) {
    articlesList.add(
      NewsModel.fromjson(element),
    );
  }
  return articlesList;
} catch (e) {
 return [];
}
  }
}
