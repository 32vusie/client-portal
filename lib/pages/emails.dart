import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EmailsPortal extends StatefulWidget {
  EmailsPortalState createState() => EmailsPortalState();
}

class EmailsPortalState extends State<EmailsPortal> {
  num position = 1;
  Logger logger = Logger();

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    if(A != Links.emailLink){
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Emails')),
        drawer: NavigationDrawer(),
        body: IndexedStack(index: position, children: <Widget>[
          WebView(
            initialUrl: Links.emailLink,
            javascriptMode: JavascriptMode.unrestricted,
            key: key,
            onPageFinished: doneLoading,
            onPageStarted: startLoading,
            // navigationDelegate: (action) {
            //   logger.i(action.url);
            //   if (action.url == Links.emailLink) {
            //     return NavigationDecision.navigate;
            //   } else {
            //     // pr.show();
            //     LoginPortal();
            //     return NavigationDecision.prevent;
            //   }
            // },
          ),
          Container(
            color: Colors.white,
            child: Center(child: CircularProgressIndicator()),
          ),
        ]));
  }
}
