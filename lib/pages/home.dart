import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'Feel the night',
      'Fancy some sea?',
      'Maybe a magic spot',
      'Meet new folks!'
    ];
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 8.0,
            ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: InkWell(
              child: Ink.image(
                image: AssetImage("assets/images/$index.jpg"),
                child: Container(
                  height: 150.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          entries[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black,
                                offset: Offset(5.0, 5.0),
                              ),
                            ],
                          ),
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                ),
                fit: BoxFit.cover,
              ),
              splashColor: Colors.red.withAlpha(30),
              onTap: () {
                print('Card tapped.');
              },
            ),
            // child: InkWell(
            //     child: Stack(
            //       children: [
            //         Image(
            //           image: AssetImage("assets/images/$index.jpg"),
            //         ),
            //         ListTile(
            //           title: Text(
            //             entries[index],
            //             style: TextStyle(color: Colors.white),
            //           ),
            //         ),
            //       ],
            //     ),
            //     splashColor: Colors.red.withAlpha(30),
            //     onTap: () {
            //       print('Card tapped.');
            //     }),
          );
        });
  }
}
