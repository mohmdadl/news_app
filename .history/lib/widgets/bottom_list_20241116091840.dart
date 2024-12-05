import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/bottom_category.dart';

class BottomList extends StatelessWidget {
  const BottomList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (ctx, int) {
        return BottomCategory();
      },
    );
  }
}
