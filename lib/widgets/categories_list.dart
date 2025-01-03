import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_widget.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  final List<CategoryModel> categoryModels = [
    CategoryModel(
      categoryTitle: 'Business',
      categoryImagePath: 'assets/business.jpeg',
    ),
    CategoryModel(
      categoryTitle: 'entertainment',
      categoryImagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryTitle: 'General',
      categoryImagePath: 'assets/general.jpeg',
    ),
    CategoryModel(
      categoryTitle: 'Health',
      categoryImagePath: 'assets/health.avif',
    ),
    CategoryModel(
      categoryTitle: 'Science',
      categoryImagePath: 'assets/science.avif',
    ),
    CategoryModel(
      categoryTitle: 'Sports',
      categoryImagePath: 'assets/sport.jpeg',
    ),
    CategoryModel(
        categoryTitle: 'Technology',
        categoryImagePath: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categoryModels.length,
        itemBuilder: (BuildContext context, int index) {
          return CategoryWidget(
            categoryModel: categoryModels[index],
          );
        },
      ),
    );
  }
}
