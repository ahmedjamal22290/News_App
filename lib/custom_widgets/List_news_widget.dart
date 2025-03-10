import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/custom_widgets/bottom_list_widget.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/services/news_services.dart';

class ListNewsWidget extends StatelessWidget {
  List<ArticalModel> articles;
  ListNewsWidget(
      {super.key, required this.articles, List<ArticalModel>? buildingVar});

  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return BottomWidget(
            ArticalNeededInfo: articles[index],
          );
        },
      ),
    );
  }
}
