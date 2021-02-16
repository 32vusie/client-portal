import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

DateTime backbuttonpressedTime;
Future<bool> onWillPop() async {
  DateTime currentTime = DateTime.now();

  //bifbackbuttonhasnotbeenpreedOrToasthasbeenclosed
  //Statement 1 Or statement2
  bool backButton = backbuttonpressedTime == null ||
      currentTime.difference(backbuttonpressedTime) > Duration(seconds: 3);

  if (backButton) {
    backbuttonpressedTime = currentTime;
    Fluttertoast.showToast(
        msg: "Double Click to exit app",
        backgroundColor: Colors.black,
        textColor: Colors.white);
    return false;
  }
  return true;
}
