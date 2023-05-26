import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppWebViewPage extends StatefulWidget {
  const InAppWebViewPage({super.key});

  @override
  State<InAppWebViewPage> createState() => _InAppWebViewPageState();
}

class _InAppWebViewPageState extends State<InAppWebViewPage> {
  InAppWebViewController? webViewController;
  PullToRefreshController? refreshController;
  late var url;
  var initialUrl =
      "https://cdn-sandbox.tamara.co/widget-v2/tamara-widget.html?lang=en&public_key=d36c6279-90c2-4239-b4e2-2c91bfda0fe4&country=SA&amount=250.0&inline_type=2";
  double progress = 0;
  var urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh))
        ],
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: urlController,
            textAlignVertical: TextAlignVertical.center,
            decoration: const InputDecoration(
              hintText: "Enterrrrr",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(initialUrl)),
          ))
        ],
      ),
    );
  }
}
