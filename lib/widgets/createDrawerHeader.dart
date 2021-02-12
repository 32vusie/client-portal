import 'package:flutter/material.dart';

Widget createDrawerHeader() {
 return DrawerHeader(
     margin: EdgeInsets.zero,
     padding: EdgeInsets.zero,
     decoration: BoxDecoration(
         image: DecorationImage(
             fit: BoxFit.fill,
             image:  AssetImage('assets/security.jpg'))),
     child: Stack(children: <Widget>[
       Positioned(
           bottom: 12.0,
           left: 16.0,
           child: Text("Client Portal",
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 20.0,
                   fontWeight: FontWeight.w500))),
     ]));
}