import 'dart:async';
// import 'dart:html';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/webview_container/webview_container.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
 
class LoginPortal extends StatefulWidget {
 
  LoginPortalState createState() => LoginPortalState();
 
}

final Completer<WebViewController> _controller = Completer<WebViewController>();
class LoginPortalState extends State<LoginPortal>{
 
  num position = 1 ;
  Logger logger = Logger();
  // var currentUrl = location.href;
  
  final key = UniqueKey();
 
  var connectivityResult = await (Connectivity().checkConnectivity());
  // checkInternet() {
  //     if (connectivityResult != ConnectivityResult.mobile ||
  //         connectivityResult != ConnectivityResult.wifi) {
  //       print("You are not connected");
  //     } else {
  //       print("you are not connected");
  //     }
  //   }
 
  doneLoading(String A) {
   
      setState(() {
        position = 0;
      });
     
    }
 
  startLoading(String A){
    if(A != Links.login){
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => new BottomNav()));
    }
    setState(() {
      position = 1;
    });
  }
 
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    // appBar: AppBar(
      // title: Text('Cart')
      // backgroundColor: Colors.white,
    // ),
        // drawer: NavigationDrawer(),
      body: IndexedStack(
        index: position,
        children: <Widget>[
          WebView(
            initialUrl: Links.login,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webcontroller){
                _controller.complete(webcontroller);
             },
            key: key ,
            onPageStarted: startLoading,

            
            onPageFinished: doneLoading,
            //  navigationDelegate: (action) {
            //   logger.i(action.url);
            //   if (action.url == Links.login) {
            //     return NavigationDecision.navigate;
            //   } else {
            //     return NavigationDecision.prevent;
            //   }
               
            // },
            
          ),
          // Container(
          //   color: Colors.white,
          //   child: Center(
          //     child: CircularProgressIndicator()),
          // ),
        ]
      )
    );
  }
}