import 'package:dio/dio.dart';
import 'package:p/moduls/artical_model.dart';

class newsServices {
  newsServices(this.dio);

  final Dio dio;
  List<dynamic> articlesListlts = [];
  Future<List<ArticalModel>> getFootballNews() async {
    String http =
        'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&language=ar&q=sports';
    Response response = await dio.get(http);
    Map<String, dynamic> jesonData = response.data;
    // OR
    // var jesonData = response.data;
    List<ArticalModel> articlesList = [];
    for (var element in jesonData['articles']) {
      articlesList.add(ArticalModel(
          image: element['urlToImage'],
          subtitle: element['description'],
          title: element['title']));
    }
    return articlesList;
  }

  // void getBusinessNews() async {
  //   String http =
  //       'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=business&language=ar';
  //   final Response = await dio.get(http);
  //   print(Response);
  // }
}
