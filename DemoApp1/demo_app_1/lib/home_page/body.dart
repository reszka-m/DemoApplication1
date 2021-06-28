import 'package:demo_app_1/home_page/components/item_list.dart';
import 'package:demo_app_1/home_page/components/upper_bar.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          UpperBar(size: size),
          ItemList(size: size),
        ],
      ),
    );
  }
}
