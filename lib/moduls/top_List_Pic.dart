import 'package:flutter/material.dart';
import 'package:p/screens/category_page.dart';

class topListWidget {
  topListWidget({required this.title, required this.pic, required this.http});
  String title, pic, http;
}

List<topListWidget> topList = [
  topListWidget(
    pic: 'assets/business.avif',
    title: 'Business',
    http: 'business',
  ),
  topListWidget(
      pic: 'assets/entertaiment.avif',
      title: 'Entertaiment',
      http: 'entertaiment'),
  topListWidget(pic: 'assets/general.avif', title: 'General', http: 'general'),
  topListWidget(pic: 'assets/health.avif', title: 'Health', http: 'health'),
  topListWidget(pic: 'assets/science.avif', title: 'Science', http: 'science'),
  topListWidget(pic: 'assets/sports.avif', title: 'Sports', http: 'sports'),
  topListWidget(
      pic: 'assets/technology.jpeg', title: 'Technology', http: 'technology'),
];
