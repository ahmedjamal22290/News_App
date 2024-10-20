import 'package:flutter/material.dart';
import 'package:p/moduls/top_List_Pic.dart';
import 'package:p/screens/category_page.dart';
import 'package:p/screens/home_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class topWIdget extends StatelessWidget {
  const topWIdget({super.key, required this.buildingVar});
  final topListWidget buildingVar;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return categoryPage(http: buildingVar.http);
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15, bottom: 25, right: 15),
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(17),
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.7,
            image: AssetImage(buildingVar.pic),
          ),
        ),
        child: Center(
          child: Text(
            buildingVar.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: 8,
            ),
          ),
        ),
      ),
    );
  }
}
