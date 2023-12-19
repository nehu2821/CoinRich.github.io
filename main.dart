import 'package:flutter/material.dart';
import 'package:your_app_name/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoinRich',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Define your color scheme here
      ),
      home: HomePage(),
    );
  }
}
