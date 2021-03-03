import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
 



class CartPortal extends StatefulWidget {
 
  CartPortalState createState() => CartPortalState();
 
}
 
class CartPortalState extends State<CartPortal>{
 
  num position = 1 ;
 
  final key = UniqueKey();
 
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }
 
  startLoading(String A){
    if(A != Links.cartLink){
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
  }
 
 
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Scaffold(
       appBar: AppBar(
          title: Text('Cart')),
          drawer: NavigationDrawer(),
        body: IndexedStack(
        index: position,
        children: <Widget>[
 
        WebView(
          initialUrl: Links.cartLink,
          javascriptMode: JavascriptMode.unrestricted,
          key: key ,
          onPageFinished: doneLoading,
          onPageStarted: startLoading,
          ),
 
         Container(
          color: Colors.white,
          child: Center(
            child: CircularProgressIndicator()),
          ),
          
        ])
    ),
  );
  }
}