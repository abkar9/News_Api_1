import 'package:app5/model/source_model.dart';

class NewsAPI {
  List<Source> articles = [];

  NewsAPI();
  factory NewsAPI.fromJson(Map<String, dynamic> json) {
    var newsApi = NewsAPI();

    for (var item in json['articles']) {
      Source data = Source.fromJson(item);
      newsApi.articles.add(data);
    }
    return newsApi;
  }
}
