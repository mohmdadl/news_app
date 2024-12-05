import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/top_model.dart';
import 'package:news_app_ui_setup/widgets/top_category.dart';

class TopList extends StatelessWidget {
  TopList({super.key});
  List<MyTopModel> topModels = [
    MyTopModel.MyTopModel(
      topCategoryTitle: 'Business',
      topImagePath: 'assets/business.avif',
    ),
    MyTopModel.MyTopModel(
      topCategoryTitle: 'entertainment',
      topImagePath: 'assets/entertaiment.avif',
    ),
    MyTopModel.MyTopModel(
      topCategoryTitle: 'General',
      topImagePath: 'assets/general.avif',
    ),
    MyTopModel.MyTopModel(
      topCategoryTitle: 'Health',
      topImagePath: 'assets/health.avif',
    ),
    MyTopModel.MyTopModel(
      topCategoryTitle: 'Sports',
      topImagePath: 'assets/sports.avif',
    ),
    MyTopModel.MyTopModel(
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
