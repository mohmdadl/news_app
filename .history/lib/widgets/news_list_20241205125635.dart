import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key});
  List<BottomModel> bottomModels = [
    BottomModel(
      ImagePath: 'assets/sport.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/business.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/entertaiment.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/general.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/health.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/science.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      ImagePath: 'assets/technology.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (context, index) => NewsWidget(bottomModel: bottomModels[index]),
    ));
  }
}
