

import 'package:flutter/material.dart';
import 'package:system32online_portal/webview_container/webview_container.dart';

_handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
}