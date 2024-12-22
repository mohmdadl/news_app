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

var future;

class _NewsListBuilderState extends State<NewsListBuilder> {
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio()).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: ((context, snapshot) {
        //snapshot دا حاوية بيستقبل فيها

        if (snapshot.hasData) {
          return NewsList(articlesModel: snapshot.data!);
        } else if (snapshot.hasError) {
          print(snapshot.data);
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                  'oops! there is a problem right now! \nyou can try at another time.'),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      }),
    );
  }
}
