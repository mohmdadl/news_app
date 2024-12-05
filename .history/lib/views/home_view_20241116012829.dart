import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
      body: Container(
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
      // Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     Text(
      //       'Headline',
      //       style: TextStyle(fontSize: 18),
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         shrinkWrap: true,
      //         scrollDirection: Axis.horizontal,
      //         itemCount: 15,
      //         itemBuilder: (BuildContext context, int index) => Card(
      //               child: Center(child: Text('Dummy Card Text')),
      //             ),
      //       ),
      //     ),
      //     Text(
      //       'Demo Headline 2',
      //       style: TextStyle(fontSize: 18),
      //     ),
      //     Expanded(
      //       child: ListView.builder(
      //         shrinkWrap: true,
      //         itemCount: 15,
      //         itemBuilder: (ctx,int){
      //           return Card(
      //             child: ListTile(
      //                 title: Text('Motivation $int'),
      //                 subtitle: Text('this is a description of the motivation')),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
