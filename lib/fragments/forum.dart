import 'package:flutter/material.dart';
import 'package:system32online_portal/navigations/drawer.dart';

class ForumPage extends StatelessWidget {
  static const String routeName = '/forumPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Forum"),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is forum page")));
  }
}
