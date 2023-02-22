import 'package:flutter/material.dart';

class DetailImagePage extends StatelessWidget {
  final String urlImage;
  final String size;

  const DetailImagePage({Key? key, required this.urlImage, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(urlImage, fit: BoxFit.cover, width: 320, height: 320),
            Text(size)
          ],
        ),

        /// Contoh Full Screen Size
        // Image.network(urlImage,
        //   fit: BoxFit.cover,
        //   width: MediaQuery.of(context).size.width,
        //   height: MediaQuery.of(context).size.height),
      ),
    );
  }
}
