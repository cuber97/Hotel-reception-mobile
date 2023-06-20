import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hotel_reception_mobile/environments.dart';
import 'package:hotel_reception_mobile/models/account.dart';
import 'package:hotel_reception_mobile/widgets/login_screen.dart';
import 'package:hotel_reception_mobile/widgets/main_page.dart';
import 'package:hotel_reception_mobile/widgets/navbar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  Widget? mainWidget;

  void getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      if (prefs.get('token') == null) {
        mainWidget = MainPage();
      }
    });
  }

  @override
  void initState() {
    getData();
  }


  @override
  Widget build(BuildContext context) {
    mainWidget = LoginScreen(getData: getData);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainWidget,
    );
  }
}
