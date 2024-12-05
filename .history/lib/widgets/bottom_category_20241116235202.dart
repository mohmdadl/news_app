import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/bottom_model.dart';

class BottomCategory extends StatelessWidget {
  BottomModel bottomModel;
   BottomCategory({
    super.key,
    required this.bottomModel
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              bottomModel.bottomImagePath,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen will happen this text just for test and to ensure if overflow will happen',
            style: TextStyle(fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'just subtitle with different style ',
            style: TextStyle(fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
