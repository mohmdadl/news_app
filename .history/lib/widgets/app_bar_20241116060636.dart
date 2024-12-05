import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'News',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            'Cloud',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ],
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }
}
