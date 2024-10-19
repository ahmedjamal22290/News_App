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
    http:
        'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=business&sortBy=popularity',
  ),
  topListWidget(
      pic: 'assets/entertaiment.avif',
      title: 'Entertaiment',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=entertaiment&sortBy=popularity'),
  topListWidget(
      pic: 'assets/general.avif',
      title: 'General',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=general&sortBy=popularity'),
  topListWidget(
      pic: 'assets/health.avif',
      title: 'Health',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=health&sortBy=popularity'),
  topListWidget(
      pic: 'assets/science.avif',
      title: 'Science',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=science&sortBy=popularity'),
  topListWidget(
      pic: 'assets/sports.avif',
      title: 'Sports',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=sports&sortBy=popularity'),
  topListWidget(
      pic: 'assets/technology.jpeg',
      title: 'Technology',
      http:
          'https://newsapi.org/v2/everything?apiKey=dcc2c50ff4b5471eb8ffcbdfd4c49de1&q=technology&sortBy=popularity'),
];
