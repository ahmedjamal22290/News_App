import 'dart:math';
import 'package:flutter/material.dart';
import 'package:p/moduls/artical_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key, required this.ArticalNeededInfo});

  final ArticalModel ArticalNeededInfo;

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  WebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => webViewMyWidget(
              controller: WebViewController(),
              webSite: widget.ArticalNeededInfo.URL!,
            ),
          ),
        );
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
                    widget.ArticalNeededInfo.image ??
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
              widget.ArticalNeededInfo.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 375,
            child: Text(
              widget.ArticalNeededInfo.subtitle ?? 'There is no subtitle',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.rtl,
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

class webViewMyWidget extends StatefulWidget {
  const webViewMyWidget(
      {super.key, required this.controller, required this.webSite});
  final WebViewController controller;
  final String webSite;

  @override
  State<webViewMyWidget> createState() => _webViewMyWidgetState();
}

class _webViewMyWidgetState extends State<webViewMyWidget> {
  late final WebViewController controller;
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.webSite));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
