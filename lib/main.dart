import 'package:flutter/material.dart';
import 'package:p/screens/home_page.dart';

void main() {
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
