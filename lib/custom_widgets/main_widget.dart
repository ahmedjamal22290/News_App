import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:p/moduls/Main_Model.dart';

class mainWidget extends StatelessWidget {
  mainWidget({required this.x});
  mainModel x;
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              x.image,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3, right: 3),
            child: Container(
              child: AutoSizeText(
                x.mainTitle,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 3, right: 3),
            child: Container(
              child: AutoSizeText(
                x.subTitle,
                style: TextStyle(
                  color: const Color.fromARGB(255, 69, 69, 69),
                  fontSize: 21,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
