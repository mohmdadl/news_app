import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';

class NewsServices {
  final Dio dio;
  String category;
  
  NewsServices({required this.dio, required this.category});
  Future<List<ArticlesModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?q=sport&apiKey=338042678f3c4ce2a2d347a231ecb7df&category=$category',
      );

      Map<String, dynamic> jsondata =
          response.data; //convert response to json data

      List<dynamic> articles = jsondata['articles'];
     

      List<ArticlesModel> articlesList = [];

      for (var article in articles) {
        ArticlesModel articleModel = ArticlesModel.fomJson(article);
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      // Throw an exception to signal the error
      throw Exception('Error fetching news: $e');
    }
  }
}
