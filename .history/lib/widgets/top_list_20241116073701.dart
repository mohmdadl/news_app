import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/top_model.dart';
import 'package:news_app_ui_setup/widgets/top_category.dart';

class TopList extends StatelessWidget {
  TopList({super.key});
  List<MyTopModel> topModels = [
    MyTopModel(
      topCategoryTitle: 'Business',
      topImagePath: 'assets/health.avif',
    ),
    MyTopModel(
      topCategoryTitle: 'entertainment',
      topImagePath: 'assets/entertaiment.avif',
    ),
    MyTopModel(
      topCategoryTitle: 'General',
      topImagePath: 'assets/health.avif',
    ),
    MyTopModel(
      topCategoryTitle: 'Health',
      topImagePath: 'assets/health.avif',
    ),
    MyTopModel(
      topCategoryTitle: 'Science',
      topImagePath: 'assets/science.avif',
    ),
    MyTopModel(
      topCategoryTitle: 'Sports',
      topImagePath: 'assets/health.avif',
    ),
    MyTopModel(
        topCategoryTitle: 'Technology',
        topImagePath: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: topModels.length,
        itemBuilder: (BuildContext context, int index) {
          return TopCategory(
            topModel: topModels[index],
          );
        },
      ),
    );
  }
}
