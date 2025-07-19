import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const PirateflixMobile(),
    ),
  );
}

class PirateflixMobile extends StatefulWidget {
  const PirateflixMobile({super.key});

  @override
  State<PirateflixMobile> createState() => _PirateflixMobileState();
}

class _PirateflixMobileState extends State<PirateflixMobile> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller =
        WebViewController()
          ..loadRequest(Uri.parse('https://film.kace.dev'))
          ..setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: controller));
  }
}
