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
bool isLoading = true;

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articlesModel = await NewsServices(dio: Dio()).getNews();
    isLoading=false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    try {
      return isLoading
          ? const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : NewsList(articlesModel: articlesModel);
    } catch (e) {
      return Text(
          'oops! there is may be a problem right now! \ntry in another time.');
    }
  }
}
