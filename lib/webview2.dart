import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebView2 extends StatelessWidget {
  const WebView2({required this.url});
final String url;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: WebView(initialUrl: url,
        javascriptMode:JavascriptMode.unrestricted,
      ),
    );

  }
}