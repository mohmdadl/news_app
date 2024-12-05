import 'package:flutter/material.dart';

class BottomCategory extends StatelessWidget {
  const BottomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(

          borderRadius: BorderRadius.circular(16),
          child: Image.asset('assets/sport.jpeg',height: 250,),
        ),
        Text(
          'this text just for test and to ensure if overflow will happen this text just for test and to ensure if overflow will happen',
          style: TextStyle(fontSize: 18),
        ),
        Text(
          'just subtitle with different style ',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        )
      ],
    );
  }
}
