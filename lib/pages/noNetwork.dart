import 'package:flutter/material.dart';

class NoNetworkError extends StatefulWidget {
  @override
  _NoNetworkErrorState createState() => _NoNetworkErrorState();
}

class _NoNetworkErrorState extends State<NoNetworkError> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/connected.png'),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
      
    );
  }
}