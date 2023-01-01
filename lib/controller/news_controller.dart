import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:storex/service/news_service.dart';

import '../model/article.dart';

class NewsController extends GetxController {
  var articles = <Articles>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchArticles();
    super.onInit();
  }

  void fetchArticles() async {
    try {
      isLoading(true);
      var articlesTemp = await NewWebService.fetchNews();
      if (articles != null) {
        articles(articlesTemp);
      }
    } finally {
      isLoading(false);
    }
  }
}
