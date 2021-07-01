import 'package:app5/model/source_model.dart';

class Article {
  Source source;
  String title;
  String url;
  String description;
  String image;

  Article({this.description, this.image, this.title, this.url, this.source});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: Source.fromJson(json['source']),
        url: json['url'] as String,
        description: json['description'],
        title: json['title'],
        image: json['urlToImage'] as String);
  }
}
