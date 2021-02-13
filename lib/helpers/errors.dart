import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final String title;

  ErrorPage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
          child: Text(
        this.title,
        style: new TextStyle(fontSize: 50, color: Colors.red),
      )),
    );
  }
}
