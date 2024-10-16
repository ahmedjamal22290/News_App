import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/moduls/bottom_list_data.dart';

class bottomWidget extends StatelessWidget {
  const bottomWidget({super.key, required this.ArticalNeededInfo});
  // final bottomDataClass nedeedVar;
  final ArticalModel ArticalNeededInfo;
  @override
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
                image: NetworkImage(
                  ArticalNeededInfo.image ??
                      'https://th.bing.com/th/id/OIP.2Sw7OWq_1hrOdTrBraUFIgAAAA?w=200&h=200&rs=1&pid=ImgDetMain',
                ),
              ),
            ),
          ),
        ),
        const Divider(
          height: 3.5,
          thickness: 0,
        ),
        SizedBox(
          width: 375,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            ArticalNeededInfo.title!,
            style: const TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 375,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            ArticalNeededInfo.subtitle ?? 'there is no subtitle',
            style: const TextStyle(
                color: Color(0xFF656464),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Divider(
          height: 10,
          thickness: 0,
        ),
      ],
    );
  }
}
