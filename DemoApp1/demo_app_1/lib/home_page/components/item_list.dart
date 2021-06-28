import 'package:demo_app_1/home_page/components/single_tile.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({Key? key, required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SingleTile(
              size: size,
              text: "Biking",
            ),
            SingleTile(
              size: size,
              text: "Skiing",
            ),
            SingleTile(
              size: size,
              text: "Skateboarding",
            ),
            SingleTile(
              size: size,
              text: "Swimming",
            ),
            SingleTile(
              size: size,
              text: "Running",
            ),
            SingleTile(
              size: size,
              text: "Dancing",
            ),
          ],
        ),
      ),
    );
  }
}
