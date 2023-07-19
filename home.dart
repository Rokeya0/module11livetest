import 'package:flutter/material.dart';

import 'model.dart';

class NewsFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return ListView.builder(
              itemCount: newsArticles.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.network(newsArticles[index]),
                  ),
                );
              },
            );
          } else {
            return GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                newsArticles.length,
                    (index) => Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.all(10),
                  child: Image.network(newsArticles[index]),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}