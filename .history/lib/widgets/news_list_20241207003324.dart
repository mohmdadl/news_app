// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/services/news_service.dart';
// import 'package:news_app_ui_setup/widgets/news_widget.dart';

// class NewsList extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//         delegate: SliverChildBuilderDelegate(
//       childCount: NewsService(dio: Dio())
//           .articlesModel
//           .length, // Ensure the number of items corresponds to the list size
//       (context, index) => NewsWidget(
//           articleModel: NewsService(dio: Dio()).articlesModel[index]),
//     ));
//   }
// }


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatefulWidget {
  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  late NewsService _newsService;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _newsService = NewsService(dio: Dio());
    _fetchNews();
  }

  Future<void> _fetchNews() async {
    try {
      await _newsService.getNews();
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Error fetching news: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Center(child: CircularProgressIndicator()) // Loading indicator
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NewsWidget(
                articleModel: _newsService.articlesModel[index],
              ),
              childCount: _newsService.articlesModel.length,
            ),
          );
  }
}
