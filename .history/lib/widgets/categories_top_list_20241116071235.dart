import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/top_model.dart';
import 'package:news_app_ui_setup/widgets/category_top.dart';

class TopList extends StatelessWidget {
  TopList({super.key});
  List<TopModel> topModels = [
    TopModel(
      topCategoryTitle: 'Business',
      topImagePath: 'assets/business.avif',
    ),
    TopModel(
      topCategoryTitle: 'entertainment',
      topImagePath: 'assets/entertaiment.avif',
    ),
    TopModel(
      topCategoryTitle: 'General',
      topImagePath: 'assets/general.avif',
    ),
    TopModel(
      topCategoryTitle: 'Health',
      topImagePath: 'assets/health.avif',
    ),
    TopModel(
      topCategoryTitle: 'Sports',
      topImagePath: 'assets/sports.avif',
    ),
    TopModel(
        topCategoryTitle: 'Technology',
        topImagePath: 'assets/technology.jpeg,'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return TopCategory(
            topModel: topModels[index],
          );
        },
      ),
    );
  }
}
