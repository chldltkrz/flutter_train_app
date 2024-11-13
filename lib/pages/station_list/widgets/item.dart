import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/seat_page.dart';

class Item extends StatelessWidget {
  String stationName;

  Item({required this.stationName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SeatPage();
      })),
      child: Column(
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
      ),
    );
  }
}
