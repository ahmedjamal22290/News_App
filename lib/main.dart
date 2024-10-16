import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/screens/home_page.dart';
import 'package:p/services/news_services.dart';

void main() {
  newsServices(Dio()).getFootballNews();
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}
