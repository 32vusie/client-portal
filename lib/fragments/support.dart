import 'package:flutter/material.dart';
import 'package:system32online_portal/navigations/drawer.dart';

class SupportPage extends StatelessWidget {
  static const String routeName = '/supportPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Support"),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is support page")));
        
  }
}
