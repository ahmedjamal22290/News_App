import 'package:dio/dio.dart';
import 'package:p/moduls/artical_model.dart';

class newsServices {
  newsServices(this.dio);

  final Dio dio;
  List<dynamic> articlesListlts = [];

  Future<List<ArticalModel>> topHeadLines() async {
    try {
      String http =
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&language=ar&q=a';
      Response response = await dio.get(http);
      Map<String, dynamic> jesonData = response.data;
      // OR
      // var jesonData = response.data;
      List<ArticalModel> articlesList = [];
      for (var element in jesonData['articles']) {
        if (element['title'] == '[Removed]') continue;
        articlesList.add(ArticalModel(
          image: element['urlToImage'],
          subtitle: element['description'],
          title: element['title'],
          URL: element['url'],
        ));
      }
      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }

  Future<List<ArticalModel>> getBusinessNews() async {
    try {
      String http =
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=business&sortBy=popularity';
      Response response = await dio.get(http);
      Map<String, dynamic> jesonData = response.data;
      List<ArticalModel> articles = [];
      for (var element in jesonData['articles']) {
        if (element['title'] != '[Removed]' &&
            element['title'] != null &&
            element['urlToImage'] != null) {
          articles.add(
            ArticalModel(
              image: element['urlToImage'],
              subtitle: element['description'],
              title: element['title'],
              URL: element['url'],
            ),
          );
        }
      }
      return articles;
    } on Exception {
      return [];
    }
  }

  Future<List<ArticalModel>> category({required String category}) async {
    try {
      String http =
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=$category';

      Response response = await dio.get(http);
      Map<String, dynamic> jesonData = response.data;
      List<ArticalModel> articles = [];
      for (var element in jesonData['articles']) {
        if (element['title'] != '[Removed]' &&
            element['title'] != null &&
            element['urlToImage'] != null) {
          articles.add(
            ArticalModel(
              image: element['urlToImage'],
              subtitle: element['description'],
              title: element['title'],
              URL: element['url'],
            ),
          );
        }
      }
      return articles;
    } on Exception {
      return [];
    }
  }
}
