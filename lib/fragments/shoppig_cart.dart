import 'package:flutter/material.dart';
import 'package:system32online_portal/navigations/drawer.dart';

class ShoppingCartPage extends StatelessWidget {
  static const String routeName = '/shoppingPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Shopping Cart"),
        ),
        drawer: NavigationDrawer(),
        body: Center(child: Text("This is cart page")));
  }
}
