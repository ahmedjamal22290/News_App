import 'package:flutter/material.dart';
import 'package:p/custom_widgets/top_list_widget.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:p/moduls/top_List_Pic.dart';
import 'package:p/screens/home_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class categoryWidget extends StatelessWidget {
  const categoryWidget({
    super.key,
    required this.articles,
  });

  final ArticalModel articles;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return newsSite(URL: articles.URL!);
        }));
      },
      child: Column(
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
              style: TextStyle(
                  color: darkMode ? Colors.white : Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
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
      ),
    );
  }
}

class newsSite extends StatefulWidget {
  const newsSite({super.key, required this.URL});
  final String URL;
  @override
  State<newsSite> createState() => _newsSiteState();
}

class _newsSiteState extends State<newsSite> {
  late final controller;

  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.URL));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
