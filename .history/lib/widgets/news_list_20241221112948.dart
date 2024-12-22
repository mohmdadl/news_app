import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatefulWidget {
  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<ArticlesModel> articlesModel = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    
    getNews();
  }

  Future<void> getNews() async {
    
    articlesModel = await NewsServices(dio: Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
          hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )
        : SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: articlesModel.length,
                (context, index) => NewsWidget(
                      articleModel: articlesModel[index],
                    )),
          );
  }
}
