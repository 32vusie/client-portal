import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ServicePortal2 extends StatefulWidget {
  ServicePortal2State createState() => ServicePortal2State();
}

class ServicePortal2State extends State<ServicePortal2> {
  num position = 1;
  Logger logger = Logger();

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    if(A != Links.orderLink){
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Products')),
        drawer: NavigationDrawer(),
        body: IndexedStack(index: position, children: <Widget>[
          WebView(
            initialUrl: Links.orderLink,
            javascriptMode: JavascriptMode.unrestricted,
            key: key,
            onPageFinished: doneLoading,
            onPageStarted: startLoading,
          ),
          Container(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
        ]));
  }
}
