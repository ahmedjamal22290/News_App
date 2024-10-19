import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewControllerScreen extends StatefulWidget {
  final String URL;

  WebViewControllerScreen({super.key, required this.URL});

  @override
  State<WebViewControllerScreen> createState() =>
      _WebViewControllerScreenState();
}

class _WebViewControllerScreenState extends State<WebViewControllerScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.URL));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
