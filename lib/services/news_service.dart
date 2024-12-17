import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';


class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});
  Future<List<ArticlesModel>> getNews() async {
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=338042678f3c4ce2a2d347a231ecb7df',
    );

    Map<String, dynamic> jsondata =
        response.data; //convert response to json data

    List<dynamic> articles = jsondata['articles'];

    List<ArticlesModel> articlesModel = [];

    for (var article in articles) {
      article = ArticlesModel(
          urlToImage: article['urlToImage'],
          title: article['title'],
          description: article['description']);
      articlesModel.add(article);
    }

    return articlesModel;
  }
}
