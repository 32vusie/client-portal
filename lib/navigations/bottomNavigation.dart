import 'package:flutter/material.dart';
import 'package:system32online_portal/pages/cart.dart';
import 'package:system32online_portal/pages/emails.dart';
import 'package:system32online_portal/pages/home.dart';
import 'package:system32online_portal/pages/profile.dart';
import 'package:system32online_portal/pages/services.dart';

class BottomNav extends StatefulWidget {
  BottomNav({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int bottomSelectedIndex = 0;
  
  List<BottomNavigationBarItem> buildBottomNavBarItems(
  ) {
    return [
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
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePortal2(),
        EmailsPortal(),
        ServicePortal2(),
        CartPortal(),
        ProfilePortal(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: buildPageView(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomSelectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blueGrey,
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ),
      ),
    );
  }
  }
