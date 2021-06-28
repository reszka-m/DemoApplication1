import 'package:flutter/material.dart';

class SingleTile extends StatelessWidget {
  const SingleTile({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Stack(
            children: [
              //background container
              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.03,
                  top: 10,
                ),
                height: size.height * 0.125,
                width: size.width * 0.93,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              //image container
              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.1,
                ),
                width: size.width * 0.25,
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/biking.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              //text container
              Container(
                margin: EdgeInsets.only(
                  left: size.width * 0.45,
                  top: size.height * 0.031,
                ),
                height: size.height * 0.09,
                width: size.width * 0.45,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[400]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
