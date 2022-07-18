import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            WebView(
              initialUrl: "$data",
              javascriptMode: JavascriptMode.unrestricted,
              onProgress: (value) {
                if (value == 100) {
                  setState(() {
                    visible = false;
                  });
                }
              },
            ),
            Visibility(
              visible: visible,
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
