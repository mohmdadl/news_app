import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  

@override
Widget build(BuildContext context) {
  return FutureBuilder<List<ArticleModel>>(
    future: NewsService(dio: Dio()).getNews(), // Replace with your method that fetches articles
    builder: (context, snapshot) {
      // Check the connection state to handle loading
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator()); // Show loading indicator
      }

      if (snapshot.hasError) {
        return Center(child: Text('Error: ${snapshot.error}')); // Show error message
      }

      if (!snapshot.hasData || snapshot.data!.isEmpty) {
        return Center(child: Text('No articles available')); // Handle empty list
      }

      // Data is ready, now build the list
      List<ArticleModel> articles = snapshot.data!;
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return NewsWidget(articleModel: articles[index]);
          },
          childCount: articles.length, // Ensure the number of items corresponds to the list size
        ),
      );
    },
  );
}

}
