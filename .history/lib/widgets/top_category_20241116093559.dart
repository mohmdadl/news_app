import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/top_model.dart';


class TopCategory extends StatelessWidget {
 
   TopModel topModel;
     TopCategory({super.key,required this.topModel});

  @override
  Widget build(BuildContext conteListxt) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          height: 85,
          width: 160,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: AssetImage(topModel.topImagePath), fit: BoxFit.fill),
          ),
          child:  Text(
            topModel.topCategoryTitle,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      );
  }
}