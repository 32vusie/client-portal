import 'package:flutter/material.dart';
import 'package:system32online_portal/helpers/helpSys.dart';
import 'package:system32online_portal/webview_container/webview_container.dart';
import 'package:system32online_portal/widgets/createDrawerBodyItem.dart';
import 'package:system32online_portal/widgets/createDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         createDrawerHeader(),
          createDrawerBodyItem(
           icon: Icons.shopping_cart_outlined,
           text: 'Profile',
           onTap: () => _handleURLButtonPress(context,Links.profileLink),
         ),
         createDrawerBodyItem(
           icon: Icons.shopping_cart_outlined,
           text: 'Shopping Cart',
           onTap: () => _handleURLButtonPress(context, Links.cartLink),
         ),
         createDrawerBodyItem(
           icon: Icons.comment_outlined,
           text: 'Blog',
           onTap: () => _handleURLButtonPress(context, Links.blogLink),
         ),

         createDrawerBodyItem(
           icon: Icons.forum_outlined,
           text: 'Forum',
           onTap: () => _handleURLButtonPress(context, Links.forumLink),
         ),
         Divider(),
         createDrawerBodyItem(
           icon: Icons.account_balance_wallet_outlined,
           text: 'Wallet',
           onTap: () => _handleURLButtonPress(context,
                            ''),
         ),
         createDrawerBodyItem(
           icon: Icons.support_agent_outlined,
           text: 'Support',
           onTap: () => _handleURLButtonPress(context, Links.fundsLink),
         ),
         createDrawerBodyItem(
           icon: Icons.support_agent_outlined,
           text: 'Logout',
           onTap: () => _handleURLButtonPress(context,Links.logoutLink),
         ),
         ListTile(
           title: Text('App version 1.0.0'),
           onTap: () {
             
           },
         ),
       ],
     ),
     
   );
   
 }
 void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}


