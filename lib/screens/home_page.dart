import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:p/custom_widgets/bottom_list_widget.dart';
import 'package:p/custom_widgets/top_list_widget.dart';
import 'package:p/moduls/bottom_list_data.dart';
import 'package:p/moduls/top_List_Pic.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
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
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topList.length,
              itemBuilder: (context, index) {
                return topWIdget(
                  buildingVar: topList[index],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bottomDataList.length,
              itemBuilder: (context, index) {
                return bottomWidget(
                  nedeedVar: bottomDataList[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
