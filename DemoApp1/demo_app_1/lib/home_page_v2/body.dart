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
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(20),
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: Text("hej"),
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text("hej"),
                color: Colors.red,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Text("hej"),
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
