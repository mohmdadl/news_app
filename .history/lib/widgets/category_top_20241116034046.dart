import 'package:flutter/material.dart';

class CategoriesTop extends StatelessWidget {
  const CategoriesTop({super.key});

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
            image: const DecorationImage(
                image: AssetImage('assets/technology.jpeg'), fit: BoxFit.fill),
          ),
          child:  const Text(
            'Technology',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      );
  }
}