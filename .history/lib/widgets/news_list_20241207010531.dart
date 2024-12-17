import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: NewsService(dio: Dio()).getNews(),
      builder: (context, snapshot) {
        // Check for loading state
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        // Handle errors
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        // Handle empty data
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No articles available'));
        }

        // Data is available, build the list
        List<ArticleModel> articles = snapshot.data!;

        // Wrap the SliverList with a CustomScrollView
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return NewsWidget(articleModel: articles[index]);
                },
                childCount: articles.length, // Ensure the childCount is the length of the list
              ),
            ),
          ],
        );
      },
    );
  }
}
