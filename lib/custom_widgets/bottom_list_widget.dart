import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:p/moduls/bottom_list_data.dart';

class bottomWidget extends StatelessWidget {
  const bottomWidget({required this.nedeedVar});
  final bottomDataClass nedeedVar;
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          width: 375,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  nedeedVar.pic,
                ),
              ),
            ),
          ),
        ),
        Divider(
          height: 3.5,
          thickness: 0,
        ),
        SizedBox(
          width: 375,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            nedeedVar.mainTitle,
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 375,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            nedeedVar.subTitle,
            style: TextStyle(
                color: const Color(0xFF656464),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          height: 10,
          thickness: 0,
        ),
      ],
    );
  }
}
