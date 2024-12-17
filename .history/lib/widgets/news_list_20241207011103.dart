import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key});


  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: NewsService(dio: Dio())
          .articels_model
          .length, // Ensure the number of items corresponds to the list size
      (context, index) => NewsWidget(
          articleModel: NewsService(dio: Dio()).articels_model[index]),
    ));
  }
}
