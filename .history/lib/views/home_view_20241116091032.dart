import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/bottom_category.dart';
import 'package:news_app_ui_setup/widgets/top_list.dart';
// import 'package:news_app_ui_setup/widgets/top_category.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/sport.jpeg',
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
        )
        // Column(
        //   children: [
        //     TopList(),
        //     BottomCategory()
        //   ],
        // ),

        // ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: 15,
        //   itemBuilder: (ctx,int){
        //     return Card(
        //       child: ListTile(
        //           title: Text('Motivation $int'),
        //           subtitle: Text('this is a description of the motivation')),
        //     );
        //   },
        // ),
        );
  }
}
