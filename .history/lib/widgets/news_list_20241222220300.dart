import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';


class NewsList extends StatelessWidget {

  List<ArticlesModel> articlesModel;
  
  NewsList({required this.articlesModel});
 

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: articlesModel.length,
          (context, index) => NewsWidget(
                articleModel: articlesModel[index],
              )),
    );
  }
}
