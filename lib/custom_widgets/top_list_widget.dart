import 'package:flutter/material.dart';
import 'package:p/moduls/top_List_Pic.dart';

class topWIdget extends StatelessWidget {
  const topWIdget({required this.buildingVar});
  final topListWidget buildingVar;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 25, right: 15),
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
    );
  }
}
