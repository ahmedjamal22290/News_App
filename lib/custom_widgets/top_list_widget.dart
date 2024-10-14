import 'package:flutter/material.dart';
import 'package:p/moduls/top_List_Pic.dart';

class topWIdget extends StatelessWidget {
  const topWIdget({required this.buildingVar});
  final topListWidget buildingVar;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
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
          ),
        ),
      ),
    );
  }
}
