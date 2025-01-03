import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list_builder.dart';

class CategoryView extends StatefulWidget {

final String category;
   CategoryView({super.key,required this.category});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        NewsListBuilder(category: widget.category),
      ],
    );
  }
}