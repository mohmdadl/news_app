import 'package:dio/dio.dart';

class NewsService {
  Dio dio;
  NewsService({required this.dio});

  getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=338042678f3c4ce2a2d347a231ecb7df');
    Map<String, dynamic> jSonData = response.data;
    print(jSonData['articles']);
  }
}
