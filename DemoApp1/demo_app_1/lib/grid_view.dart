import 'package:demo_app_1/home_page/components/upper_bar.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          UpperBar(size: size),
          Expanded(
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                padding: EdgeInsets.all(20),
                children: [
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                  Kafelek(size: size),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Kafelek extends StatelessWidget {
  const Kafelek({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            height: size.height * 0.17,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage("assets/images/biking.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "Cwel na rowerze",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
