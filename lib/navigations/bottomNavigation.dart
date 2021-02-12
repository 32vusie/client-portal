import 'package:flutter/material.dart';
import 'package:system32online_portal/pages/home.dart';
import 'package:system32online_portal/pages/cart.dart';
import 'package:system32online_portal/pages/emails.dart';
import 'package:system32online_portal/pages/profile.dart';
import 'package:system32online_portal/pages/services.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
// change for coosing which page you want the app to start
  // void initState() {
  //       super.initState();
  //       _selectedIndex = 2;
  //   }


  List<Widget> _widgetOptions = <Widget>[
    HomePortal2(),
    EmailsPortal(),
    ServicePortal2(),
    CartPortal(),
    ProfilePortal(),
  ];

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Home'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Emails'),
            icon: Icon(Icons.email),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Order'),
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Cart'),
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            // ignore: deprecated_member_use
            title: Text('Profile'),
            icon: Icon(Icons.verified_user),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

}
