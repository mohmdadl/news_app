import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list.dart';
import 'package:news_app_ui_setup/widgets/category_list.dart';
// import 'package:news_app_ui_setup/widgets/top_category.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:NewsList()
    );
  }
}