import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';

class NewsService {
  Dio dio;
   List<ArticleModel> articels_model = [];
  NewsService({required this.dio});

  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=338042678f3c4ce2a2d347a231ecb7df');
    Map<String, dynamic> jSonData = response.data;
    List<dynamic> articles = jSonData['articles'];
   
    for (var article in articles) {
      article = ArticleModel(
          imagePath: article['urlToImage'],
          mainTitle: article["title"],
          subTitle: article["description"]);
      articels_model.add(article);
    }
  }
}
