import 'package:flutter/material.dart';

class TicketPortal extends StatefulWidget {
  @override
  _TicketPortalState createState() => _TicketPortalState();
}

class _TicketPortalState extends State<TicketPortal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(child: Text("Ticket Chat")),
      ),
    );
  }
}