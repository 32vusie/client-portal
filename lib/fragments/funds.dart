
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FundsPage extends StatelessWidget {
  static const String routeName = '/fundsPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("wallet"),
        ),
        drawer: NavigationDrawer(),
        body: ServicesPortal(),
        bottomNavigationBar: BottomNav(),
    );
  }
}

class ServicesPortal extends StatefulWidget {
  @override
  ServicesPortalState createState() => ServicesPortalState();
}

class ServicesPortalState extends State<ServicesPortal> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://clientzone.system32online.co.za/order',
      javascriptMode: JavascriptMode.unrestricted,
    );
    // FloatingActionButton(onPressed: ServicePortal());
  }
}

