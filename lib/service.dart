import 'dart:io';

import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ServicePortal extends StatefulWidget {
  @override
  ServicePortalState createState() => ServicePortalState();
}

class ServicePortalState extends State<ServicePortal> {
  
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
        return WebView(
          initialUrl: Links.homeLink,
          javascriptMode: JavascriptMode.unrestricted,
    );
  }
}