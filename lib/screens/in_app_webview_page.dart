import 'package:flutter/material.dart';
import 'package:my_app/widgets/my_in_app_webview_widget.dart';

class InAppWebViewPage extends StatefulWidget {
  const InAppWebViewPage({super.key});

  @override
  State<InAppWebViewPage> createState() => _InAppWebViewPageState();
}

class _InAppWebViewPageState extends State<InAppWebViewPage> {
  final GlobalKey<MyInAppWebviewWidgetState> imageKey =
      GlobalKey<MyInAppWebviewWidgetState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {
                // webViewController!.loadUrl(
                //     urlRequest: URLRequest(
                //         url: Uri.parse(
                //             "https://cdn-sandbox.tamara.co/widget-v2/tamara-widget.html?lang=en&public_key=d36c6279-90c2-4239-b4e2-2c91bfda0fe4&country=SA&amount=250.0&inline_type=5")));
              },
              icon: const Icon(Icons.refresh))
        ],
        title: Text("Webview"),
      ),
      body: Column(
        children: [
          MyInAppWebviewWidget(
            key: imageKey,
          ),
          ElevatedButton(
              onPressed: () {
                // _loadTamaraWidget();
                // print("setstate");
                imageKey.currentState?.loadTamaraWidget("3");
                // print(imageKey.);
              },
              child: Text("Load")),
        ],
      ),
    );
  }
}
