import 'package:flutter/material.dart';
import 'package:system32online_portal/fragments/networkCheck.dart';
import 'package:system32online_portal/fragments/forum.dart';
import 'package:system32online_portal/fragments/funds.dart';
import 'package:system32online_portal/fragments/shoppig_cart.dart';
import 'package:system32online_portal/fragments/support.dart';
import 'package:system32online_portal/helpers/errors.dart';
import 'package:system32online_portal/main.dart';
import 'package:system32online_portal/navigations/bottomNavigation.dart';
import 'package:system32online_portal/onboarding.dart';
import 'package:system32online_portal/pages/login.dart';
import 'package:system32online_portal/pages/testingRedirect.dart';
import 'package:system32online_portal/routes/pageRoute.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Client Portal',
        theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
          canvasColor: Colors.white,
          indicatorColor: Colors.blueGrey,
        ),
        initialRoute: initScreen == 0 || initScreen == null ? "onboard" : "/",
        routes: {
          '/': (context) => BottomNav(),
          "second": (context) => LoginPortal(),
          "onboard": (context) => OnboardingPage(),
          PageRoutes.shopping: (context) => ShoppingCartPage(),
          // PageRoutes.networkCheck: (context) => CheckConection(),
          PageRoutes.forum: (context) => ForumPage(),
          PageRoutes.wallet: (context) => FundsPage(),
          PageRoutes.support: (context) => SupportPage(),
    },
    onUnknownRoute: (RouteSettings setting){
        // String name=setting.name;
        print("No match to route");
        return new MaterialPageRoute(builder: (context){
          return new ErrorPage(title: "No matching pages",);
        });
      },
      // home: BottomNav(),
    );
    
  }
}
