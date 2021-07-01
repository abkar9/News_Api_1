import 'package:app5/model/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiService {
  final url = Uri.parse(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=b7a2bc3052aa47d38e1b66157454fb04');
  Future<List<Article>> getArticle() async {
    http.Response res = await http.get(url);
    // List<Article> artt = [];
    if (res.statusCode == 200) {
      Map<String, dynamic> json = convert.jsonDecode(res.body);
      List<dynamic> body = json['articles'];

      // for (var item in body) {0
      //   Article ar = Article.fromJson(item);
      //   artt.add(ar);
      // }
      List<Article> articles =
          body.map((item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw Exception('there is Error we can not get articles');
    }
  }
}
