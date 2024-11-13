import 'package:flutter/material.dart';

class Seats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
