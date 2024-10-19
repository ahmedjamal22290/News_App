import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/screens/home_page.dart';
import 'package:p/services/news_services.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const homePage(),
    );
  }
}
