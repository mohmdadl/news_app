import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/bottom_model.dart';
import 'package:news_app_ui_setup/widgets/bottom_category.dart';

class BottomList extends StatelessWidget {
  BottomList({super.key});
  List<BottomModel> bottomModels = [
    BottomModel(
      bottomImagePath: 'assets/sport.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/business.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/entertaiment.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/general.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/health.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/science.avif',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
    BottomModel(
      bottomImagePath: 'assets/technology.jpeg',
      bottomMainTitle:
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
      bottomSubTitle: 'just subtitle with different style',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: bottomModels.length,
      itemBuilder: (BuildContext context, int index) {
        return BottomCategory(
          bottomModel: bottomModels[index],
        );
      },
    );
  }
}
