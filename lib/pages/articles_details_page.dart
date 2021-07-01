import 'package:app5/model/article_model.dart';
import 'package:flutter/material.dart';

class ArticalsDetails extends StatelessWidget {
  Article article;
  ArticalsDetails({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${article.title}',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 3),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(article.image),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(
                article.source.name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              article.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              article.description,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
