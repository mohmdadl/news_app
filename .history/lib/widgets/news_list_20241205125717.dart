import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articels_model.dart';
import 'package:news_app_ui_setup/widgets/news_widget.dart';

class NewsList extends StatelessWidget {
  NewsList({super.key});
  List<BottomModel> bottomModels = [
    BottomModel(
      imagePath: 'assets/sport.jpeg',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/business.jpeg',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/entertaiment.avif',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/general.jpeg',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/health.avif',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/science.avif',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      imagePath: 'assets/technology.jpeg',
      MainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      SubTitle: 'just subtitle with different style',
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
