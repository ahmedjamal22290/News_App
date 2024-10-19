import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/custom_widgets/ListViewRequst&Builder.dart';
import 'package:p/custom_widgets/List_news_widget.dart';
import 'package:p/custom_widgets/bottom_list_widget.dart';
import 'package:p/custom_widgets/category_widget.dart';
import 'package:p/custom_widgets/top_list_widget.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/services/news_services.dart';

class categoryPage extends StatefulWidget {
  const categoryPage({super.key, required this.http});
  final String http;
  @override
  State<categoryPage> createState() => _categoryPageState(http: http);
}

class _categoryPageState extends State<categoryPage> {
  List<ArticalModel> articles = [];
  String http;
  _categoryPageState({required this.http});
  var future;

  void initState() {
    super.initState();
    future = newsServices(Dio()).category(http);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return categoryList(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return error_widget();
          } else {
            return Center(
              child: Container(
                height: 80,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(126, 158, 158, 158)),
                child: CircularProgressIndicator(
                  strokeAlign: -6,
                  color: Colors.blue,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

class categoryList extends StatelessWidget {
  const categoryList({required this.articles});

  final List<ArticalModel> articles;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, Index) {
          return categoryWidget(articles: articles[Index]);
        });
  }
}
