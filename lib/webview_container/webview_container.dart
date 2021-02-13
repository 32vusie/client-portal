import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:system32online_portal/pages/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

var connectivityResult = await(Connectivity().checkConnectivity());

await(Future<ConnectivityResult> checkConnectivity) {}

class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(backgroundColor: Colors.lightBlue);
  }
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  String _value = '0';

  _WebViewContainerState(this._url);
  num position = 1;
  doneLoading(String A) {
    if (A == Links.login || A == Links.logoutLink) {
      Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
    setState(() {
      position = 0;
    });
  }

  startLoading(String A) {
    if (A == Links.login || A == Links.logoutLink) {
      Navigator.of(context, rootNavigator: true)
          .push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: <Widget>[
          new Theme(
            child: new DropdownButtonHideUnderline(
              child: new DropdownButton<String>(
                value: _value,
                items: <DropdownMenuItem<String>>[
                  new DropdownMenuItem(
                    child: new Text('Select'),
                    value: '0',
                  ),
                  new DropdownMenuItem(
                    child: new Text('Email Link'),
                    value: 'one',
                  ),
                  new DropdownMenuItem(
                    child: new Text('See Favorites'),
                    value: 'two',
                  ),
                ],
                onChanged: (String value) {
                  setState(() => _value = value);
                },
              ),
            ),
            data: new ThemeData.dark(),
          ),
        ],
      ),
      body: IndexedStack(index: position, children: <Widget>[
        WebView(
          // if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.wifi) {
          key: _key,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: _url,
          onPageStarted: startLoading,
          onPageFinished: doneLoading,
          // } else {
          //   // NO INTERNET
          // }
        ),
        Container(
          child: Center(child: CircularProgressIndicator()),
        ),
      ]),
    );
  }
}
