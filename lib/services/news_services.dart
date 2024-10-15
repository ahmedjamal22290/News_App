import 'package:dio/dio.dart';

class newsSerrvices {
  newsSerrvices({required this.dio});

  final Dio dio;

  void getFootballNews() async {
    String http =
        'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=football&language=ar';
    final Response = await dio.get(http);
    print(Response);
  }

  void getBusinessNews() async {
    String http =
        'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=business&language=ar';
    final Response = await dio.get(http);
    print(Response);
  }
}
