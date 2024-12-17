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

// import 'package:dio/dio.dart';
// import 'package:news_app_ui_setup/models/articels_model.dart';

// class NewsService {
//   Dio dio;
//   List<ArticleModel> articlesModel = []; // Fixed typo

//   NewsService({required this.dio});

//   Future<void> getNews() async {
//     try {
//       // Make the network request
//       Response response = await dio.get(
//         'https://newsapi.org/v2/top-headlines?country=us&apiKey=338042678f3c4ce2a2d347a231ecb7df',
//       );

//       // Parse the response data
//       Map<String, dynamic> jsonData = response.data;

//       // Check if 'articles' is present in the response
//       if (jsonData['articles'] != null) {
//         List<dynamic> articles = jsonData['articles'];

//         // Map each article to your ArticleModel and add to the list
//         articlesModel = articles.map((article) {
//           return ArticleModel(
//             imagePath: article['urlToImage'] ?? '', // Default empty if no image
//             mainTitle: article["title"] ?? '', // Default empty if no title
//             subTitle: article["description"] ?? '', // Default empty if no description
//           );
//         }).toList();
//       }
//     } catch (e) {
//       print('Error fetching news: $e'); // Handle errors
//       rethrow; // Optional: you could throw the error again to handle it outside
//     }
//   }
// }
