import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail_image_page.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Gallery'),
        ),

        /// 1. Using GridView.builder
        body: GridView.builder(
            padding: const EdgeInsets.all(18.0),
            // for(var i= 0; i< 10; i++){}
            itemCount: 500,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 18.0,
              crossAxisSpacing: 18.0,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  /// Contoh Debug
                  debugPrint(
                      "LOG_ONTAP https://picsum.photos/id/$index/300/300 ");

                  /// Contoh Navigasi
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (_) => DetailImagePage(
                            urlImage: "https://picsum.photos/id/$index/300/300",
                            size: '300 x 300 $index',
                          )));
                },
                child: Image.network(
                  "https://picsum.photos/id/$index/300/300",
                  loadingBuilder: (context, widget, event) {
                    if (event == null) {
                      return widget;
                    } else {
                      return const SizedBox(
                        height: 1.0,
                        width: 1.0,
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                  errorBuilder: (context, object, error) {
                    return const Icon(Icons.error);
                  },
                ),
              );
            }));
  }
}
