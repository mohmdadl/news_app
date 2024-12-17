import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';

class NewsWidget extends StatelessWidget {
  ArticleModel articleModel;
  NewsWidget({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: articleModel.imagePath != null
                ? Image.asset(
                    articleModel.imagePath!,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : SizedBox(
                    height: 250, width: double.infinity), // Placeholder if null
          ),
          Text(
            articleModel.mainTitle ??
                'Default Main Title', // Provide a default if null
            style: TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            articleModel.subTitle ??
                'Default Subtitle', // Provide a default if null
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
