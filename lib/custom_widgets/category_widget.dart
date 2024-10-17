import 'package:flutter/material.dart';
import 'package:p/moduls/artical_model.dart';

class categoryWidget extends StatelessWidget {
  const categoryWidget({
    super.key,
    required this.articles,
  });

  final ArticalModel articles;

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
                  articles.image ??
                      'https://png.pngtree.com/png-clipart/20230502/original/pngtree-oops-speech-bubble-in-doodle-png-image_9134602.png',
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
            articles.title!,
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
            articles.subtitle ?? 'there is no subtitle',
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
