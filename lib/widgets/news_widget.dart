import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';

class NewsWidget extends StatelessWidget {
  final ArticlesModel articleModel;
  NewsWidget({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              articleModel.urlToImage ?? 'https://dummyimage.com/200x150/cccccc/000000&text=No+Image',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            articleModel.title ?? '',
            style: TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articleModel.description ?? '',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
