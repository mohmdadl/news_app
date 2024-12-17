import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/top_category.dart';

class TopList extends StatelessWidget {
  TopList({super.key});
  List<TopModel> topModels = [
    TopModel(
      topCategoryTitle: 'Business',
      topImagePath: 'assets/business.jpeg',
    ),
    TopModel(
      topCategoryTitle: 'entertainment',
      topImagePath: 'assets/entertaiment.avif',
    ),
    TopModel(
      topCategoryTitle: 'General',
      topImagePath: 'assets/general.jpeg',
    ),
    TopModel(
      topCategoryTitle: 'Health',
      topImagePath: 'assets/health.avif',
    ),
    TopModel(
      topCategoryTitle: 'Science',
      topImagePath: 'assets/science.avif',
    ),
    TopModel(
      topCategoryTitle: 'Sports',
      topImagePath: 'assets/sport.jpeg',
    ),
    TopModel(
        topCategoryTitle: 'Technology',
        topImagePath: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
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
