import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list.dart';
import 'package:news_app_ui_setup/widgets/categories_list.dart';
// import 'package:news_app_ui_setup/widgets/top_category.dart';

class HomeView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesList(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          NewsList()
        ],
      ),
    );
  }
}
