import 'package:flutter/material.dart';
import 'package:p/custom_widgets/main_widget.dart';
import 'package:p/moduls/Main_Model.dart';
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
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: topPic.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, right: 10, left: 10, bottom: 20),
                  child: Container(
                    child: Image.asset(
                      topPic[index],
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: newsList.length,
              itemBuilder: (context, index) {
                return mainWidget(x: newsList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
