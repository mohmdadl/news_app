import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';

class NewsWidget extends StatelessWidget {
  BottomModel bottomModel;
  NewsWidget({super.key, required this.bottomModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              bottomModel.imagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            bottomModel.MainTitle,
            style: TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            bottomModel.SubTitle,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
