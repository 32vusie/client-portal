import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/navigations/drawer.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
 
class ProfilePortal extends StatefulWidget {
 
  ProfilePortalState createState() => ProfilePortalState();
 
}
 
class ProfilePortalState extends State<ProfilePortal>{
 
  num position = 1 ;
 
  final key = UniqueKey();
 
  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }
 
  startLoading(String A){
    if(A != Links.login){
        Navigator.of(context, rootNavigator: true).push(MaterialPageRoute(builder: (context) => new LoginPortal()));
    }
  }
 
  @override
  Widget build(BuildContext context) {
  return Container(
    child: Scaffold(
       appBar: AppBar(
          title: Text('Profile')),
          drawer: NavigationDrawer(),
        body: IndexedStack(
        index: position,
        children: <Widget>[
 
        WebView(
          initialUrl: Links.profileLink,
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