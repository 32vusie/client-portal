import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:system32online_portal/fragments/networkCheck.dart';
import 'app.dart';

int initScreen;

Future<void> main() async {
  // ConnectionStatusSingleton connectionStatus = ConnectionStatusSingleton.getInstance();
  // connectionStatus.initialize();
  CheckNetwork();
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen $initScreen');
  runApp(MyApp());
}
