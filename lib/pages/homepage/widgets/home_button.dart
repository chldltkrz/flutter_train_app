import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/seat_page.dart';

class HomeButton extends StatelessWidget {
  String departure;
  String destination;
  bool isStationsSet;
  HomeButton(
      {required this.departure,
      required this.destination,
      required this.isStationsSet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
        ),
        onPressed: () {
          if (isStationsSet) {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SeatPage(departure: departure, destination: destination);
            }));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('출발역과 도착역을 선택해주세요.'),
              duration: Duration(seconds: 2),
            ));
          }
        },
        child: Text('좌석 선택',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
