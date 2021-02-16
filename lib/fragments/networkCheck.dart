import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity/connectivity.dart';

var connectivityResult = await (Connectivity().checkConnectivity());

await(Future<ConnectivityResult> checkConnectivity) {
}

class CheckConection extends State<CheckConection> {
  
  final Completer<WebViewController> _controller=Completer<WebViewController>();

  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      body: WebView(
        if (connectivityResult == ConnectivityResult.mobile) {
  // I am connected to a mobile network.
		} else if (connectivityResult == ConnectivityResult.wifi) {
  // I am connected to a wifi network.

        initialUrl: "https://google.com/",
        onWebViewCreated: (WebViewController webViewController){
          	_controller.complete(webViewController);
        },}
        else{
          //i am not connected to any network
        }
      ) );
       
       
    
  }
}