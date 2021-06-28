import 'package:demo_app_1/home_page/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.green[400],
      ),
      home: HomePage(),
    );
  }
}
