import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Gallery'),
        ),
        /// 1. Using GridView.count
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 18.0,
          crossAxisSpacing: 18.0,
          padding: const EdgeInsets.all(22.0),
          children: [
            Image.network('https://picsum.photos/id/238/300/300'),
            Image.network('https://picsum.photos/id/239/300/300'),
            Image.network('https://picsum.photos/id/240/300/300'),
            Image.network('https://picsum.photos/id/242/300/300'),
            Image.network('https://picsum.photos/id/243/300/300'),
            Image.network('https://picsum.photos/id/244/300/300'),
            Image.network('https://picsum.photos/id/249/300/300'),
            Image.network('https://picsum.photos/id/247/300/300'),
            Image.network('https://picsum.photos/id/247/300/300'),
            Image.network('https://picsum.photos/id/247/300/300'),
          ],
        ));
  }
}
