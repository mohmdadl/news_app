import 'package:flutter/material.dart';

class TopList extends StatelessWidget {
  const TopList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
            height: 85,
            child: ListView.builder(
              // shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return ;
              },
            ),
          );
  }
}