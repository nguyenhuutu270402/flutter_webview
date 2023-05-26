import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyInAppWebviewWidget extends StatefulWidget {
  // final GlobalKey<MyInAppWebviewWidgetState> imageKey;
  const MyInAppWebviewWidget({
    super.key,
  });

  @override
  State<MyInAppWebviewWidget> createState() => MyInAppWebviewWidgetState();
}

class MyInAppWebviewWidgetState extends State<MyInAppWebviewWidget> {
  InAppWebViewController? webViewController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // loadTamaraWidget();
  }

  void loadTamaraWidget(String type) {
    String tamaraWidgetHtml = '''

<!DOCTYPE html>
<html lang="en">

<head>
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
<script>
          window.tamaraWidgetConfig = {
            lang: "en",
            country: "SA",
            publicKey: "d36c6279-90c2-4239-b4e2-2c91bfda0fe4"
          };
        </script>
        <script defer type="text/javascript" src="https://cdn-sandbox.tamara.co/widget-v2/tamara-widget.js"></script>
        <tamara-widget type="tamara-summary" amount="250" inline-type="$type"></tamara-widget>
</body>

</html>

  ''';
    webViewController?.loadData(
      data: tamaraWidgetHtml,
      mimeType: 'text/html',
      encoding: 'utf-8',
    );
    print("chay neffff");
  }

  void tesstFunc() {
    print("chay neffff");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.green,
      child: InAppWebView(
        onWebViewCreated: (controller) {
          webViewController = controller;
          // loadTamaraWidget();
        },
        initialUrlRequest: URLRequest(url: Uri.parse("")),
      ),
    );
  }
}
