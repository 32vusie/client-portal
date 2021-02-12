import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:system32online_portal/webview_container/webview_container.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NetworkPage extends StatefulWidget {
  static const String routeName = '/NetworkPage';
  NetworkPageState createState() => NetworkPageState();
}

class NetworkPageState extends State<NetworkPage> {
  num position = 1;
  Logger logger = Logger();
  var connectivityResult = await(Connectivity().checkConnectivity());
  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  checkInternet() {
    if (connectivityResult != ConnectivityResult.mobile ||
        connectivityResult != ConnectivityResult.wifi) {
      print("You are not connected");
    } else {
      print("you are connected");
    }
  }

  startLoading(String A) {
    checkInternet();
    if (A != Links.orderLink) {
      Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (context) => new LoginPortal()));
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
