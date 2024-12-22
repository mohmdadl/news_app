import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';


class NewsServices {
  final Dio dio;
  NewsServices({required this.dio});
  Future<List<ArticlesModel>> getNews() async {
    var response = await dio.get(
      'https://newsdata.io/api/1/latest?apikey=pub_62547e85c3399cd9da6c63e52133af7a760&domain=nytimes,bbc',
    );

    Map<String, dynamic> jsondata =
        response.data; //convert response to json data

    List<dynamic> articles = jsondata['results'];

    List<ArticlesModel> articlesModel = [];

    for (var article in articles) {
      article = ArticlesModel(
          urlToImage: article['image_url'],
          title: article['title'],
          description: article['description']);
      articlesModel.add(article);
    }

    return articlesModel;
  }
}
