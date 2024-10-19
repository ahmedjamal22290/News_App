import 'package:auto_size_text/auto_size_text.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:p/custom_widgets/ListViewRequst&Builder.dart';
import 'package:p/custom_widgets/List_news_widget.dart';
import 'package:p/custom_widgets/bottom_list_widget.dart';
import 'package:p/custom_widgets/top_list_widget.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/moduls/top_List_Pic.dart';
import 'package:p/services/news_services.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  // newsServices News = await newsServices(Dio());

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
              text: "News",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "Cloud",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // SliverToBoxAdapter(
          //   child: SizedBox(
          //     height: 150,
          //     child: topWIdget(buildingVar: topList[0]),
          //   ),
          // ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: topList.length,
                itemBuilder: (context, index) {
                  return topWIdget(
                    buildingVar: topList[index],
                  );
                },
              ),
            ),
          ),
          newsListViewBuilder(),
        ],
      ),
    );
  }
}
