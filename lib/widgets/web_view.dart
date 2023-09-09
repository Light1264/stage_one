import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ExploreWebview extends StatefulWidget {
  const ExploreWebview({required this.url, required this.title});
  final String url;
  final String title;
  @override
  _ExploreWebviewState createState() => _ExploreWebviewState();
}

class _ExploreWebviewState extends State<ExploreWebview> {
  final _key = UniqueKey();
  bool isDoneLoading = false;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            isDoneLoading
                ? const SizedBox(
                    height: 0,
                    width: 0,
                  )
                : const LinearProgressIndicator(
                    backgroundColor: Colors.white,
                    minHeight: 4,
                  ),
            Expanded(
              child: WebView(
                key: _key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: widget.url,
                onPageFinished: (text) {
                  setState(() {
                    isDoneLoading = true;
                  });
                },
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          backgroundColor: const Color(0xFF323232),
          child: const Center(
            child: Icon(
              Icons.arrow_back,
              size: 50,
              color: Color.fromARGB(255, 240, 239, 239),
            ),
          ),
        ),
      ),
    );
  }
}
