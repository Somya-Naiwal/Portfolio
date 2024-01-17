import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late String html;
  @override
  void initState() {
    super.initState();
    html = """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: cadetblue;
        }

        button {
            background-color: #621e1e;
            color: rgb(235, 225, 225);
            padding: 10px 20px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
        }
    </style>

</head>
    
<body bgcolor="cian">
    <h1>It's a web view</h1>
    <button onclick="redirectToGoogle()">Go to Google</button>

     <script>
        function redirectToGoogle() {
            // Redirect to Google
            window.location.href = 'https://www.google.com';
        }
    </script>
</body>

</html>
""";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.dataFromString(html, mimeType: "text/html"))
              .toString(),
      ),
    ));
  }
}
