import 'package:demo_app_1/grid_view.dart';
import 'package:demo_app_1/home_page/my_home_page.dart';
import 'package:flutter/material.dart';

import 'home_page_v2/home_page_v2.dart';

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
      home: GridViewPage(),
    );
  }
}
