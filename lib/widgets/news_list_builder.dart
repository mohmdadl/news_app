import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/services/news_service.dart';
import 'package:news_app_ui_setup/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  String category;
  
  
   NewsListBuilder({super.key,required this.category});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(dio: Dio(), category: widget.category).getNews();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: ((context, snapshot) {
        //snapshot دا حاوية بيستقبل فيها

        //first case   ====>>>>  error

        if (snapshot.hasError) {
          return const SliverFillRemaining(
            child: Center(
              child: Text(
                  'oops! there is a problem right now! \nyou can try at another time.'),
            ),
          );

          //second case   ====>>>>  successfully 

        } else {
          if (snapshot.hasData) {
             return NewsList(articlesModel: snapshot.data!);
          }
          
          //third case   ====>>>>  loading 
          
           else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        }
      }),
    );
  }
}
