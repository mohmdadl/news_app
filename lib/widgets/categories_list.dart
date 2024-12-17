import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_widget.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  List<CategoryModel> topModels = [
    CategoryModel(
      topCategoryTitle: 'Business',
      topImagePath: 'assets/business.jpeg',
    ),
    CategoryModel(
      topCategoryTitle: 'entertainment',
      topImagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      topCategoryTitle: 'General',
      topImagePath: 'assets/general.jpeg',
    ),
    CategoryModel(
      topCategoryTitle: 'Health',
      topImagePath: 'assets/health.avif',
    ),
    CategoryModel(
      topCategoryTitle: 'Science',
      topImagePath: 'assets/science.avif',
    ),
    CategoryModel(
      topCategoryTitle: 'Sports',
      topImagePath: 'assets/sport.jpeg',
    ),
    CategoryModel(
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
          return CategoryWidget(
            topModel: topModels[index],
          );
        },
      ),
    );
  }
}
