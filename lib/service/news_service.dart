import 'package:http/http.dart' as http;
import 'package:storex/constants/constants.dart';
import 'package:storex/model/article.dart';

class NewWebService {
  static var client = http.Client();

  static Future<List<Articles>?> fetchNews() async {
    var response = await client.get(Uri.parse(Constants.TOPHEADLINES));

    if (response.statusCode == 200) {
      return articlesFromJson(response.body);
    } else {
      return null;
    }
  }
}
