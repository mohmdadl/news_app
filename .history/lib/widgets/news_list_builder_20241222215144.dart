import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

List<ArticlesModel> articlesModel = [];

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articlesModel = await NewsServices(dio: Dio()).getNews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return NewsList(articlesModel: articlesModel);
  }
}