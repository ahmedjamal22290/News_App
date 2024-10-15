import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/screens/home_page.dart';
import 'package:p/services/news_services.dart';

void main() {
  newsSerrvices wanted = newsSerrvices(dio: Dio());
  wanted.getFootballNews;
  runApp(newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
