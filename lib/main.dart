//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_simpleapp/pages/home_page.dart';
import 'package:flutter_simpleapp/pages/login_page.dart';
// ignore: import_of_legacy_library_into_null_safe

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      //initialRoute: "/home",
      routes: {
        "/": (context) => LogInPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LogInPage(),
      },
    );
  }
}
