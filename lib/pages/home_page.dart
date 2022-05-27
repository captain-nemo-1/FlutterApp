import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop"),
      ),
      body: Center(child: Container(child: Text("Welcome to the App!"))),
      drawer: Drawer(), //hamburger icon displays an empty panel
    );
  }
}
