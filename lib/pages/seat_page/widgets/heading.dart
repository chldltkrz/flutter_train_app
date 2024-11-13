import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  String departing;
  String arriving;

  Heading(this.departing, this.arriving);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Text(departing,
              textAlign: TextAlign.end,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple)),
          Spacer(),
          Icon(Icons.arrow_circle_right_outlined, size: 30),
          Spacer(),
          Text(arriving,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple)),
          Spacer(),
        ],
      ),
    );
  }
}
