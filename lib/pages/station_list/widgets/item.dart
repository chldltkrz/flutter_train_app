import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String stationName;

  Item({required this.stationName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(stationName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Divider()
      ],
    );
  }
}
