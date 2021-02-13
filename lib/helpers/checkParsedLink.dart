import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/pages/cart.dart';
import 'package:system32online_portal/pages/emails.dart';
import 'package:system32online_portal/pages/home.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:system32online_portal/pages/profile.dart';
import 'package:system32online_portal/pages/services.dart';

num position = 1;

checkPageLink(String A) {
  if (A == Links.login) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new LoginPortal()));
  } else if (A == Links.orderLink) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new ServicePortal2()));
  } else if (A == Links.emailLink) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new EmailsPortal()));
  } else if (A == Links.cartLink) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new CartPortal()));
  } else if (A == Links.homeLink) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new HomePortal2()));
  } else if (A == Links.profileLink) {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new ProfilePortal()));
  } else {
    BuildContext context;
    Navigator.of(context, rootNavigator: true)
        .push(MaterialPageRoute(builder: (context) => new LoginPortal()));
  }
}

// doneLoading(String A) {}

// startLoading(String A) {
//   checkPageLink(A);
// }
